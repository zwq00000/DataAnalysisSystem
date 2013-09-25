using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Entity;
using System.Collections;
using HanRuEdu.LDAL;
using System.Text;
using System.Data.Entity.Validation;
using HanRuEdu.JPXT.Common;

namespace HanRuEdu.JPXT.Controllers.JPXT
{
    public class TKSQSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_04_TKSQSJ_DISP> model = db_ele.VIEW_EDU_ELE_04_TKSQSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.ID.Contains(searchkey)).ToList();
            }

            if (!String.IsNullOrEmpty(sort))
            {
                if (order.Equals("desc"))
                {
                    model = model.OrderBy(e => GetPropertyValue(e, sort)).ToList();
                }
                else
                {
                    model = model.OrderByDescending(e => GetPropertyValue(e, sort)).ToList();
                }
            }
            return "{\"total\":" + model.Count + ",\"rows\":" + HanRuEdu.Utils.JsonHelp.JsonSerialize(model.Skip(page * rows - rows).Take(rows).ToList()) + "}";
        }

        public void AddTksqsj(EDU_ELE_04_TKSQSJ tksqsj)
        {
            tksqsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTksqsj(tksqsj);
        }

        public void UpdTksqsj(EDU_ELE_04_TKSQSJ tksqsj)
        {
            //设置默认值
            if (tksqsj.ID == 0) tksqsj.ID = 0;//编号
            if (tksqsj.SCHOOLID == 0) tksqsj.SCHOOLID = 0;//学校ID
            if (tksqsj.JSRKID == 0) tksqsj.JSRKID = 0;//教师任课ID
            if (tksqsj.TKLXID == 0) tksqsj.TKLXID = 0;//调课类型ID
            if (tksqsj.TKQQSZ == 0) tksqsj.TKQQSZ = 0;//调课前起始周
            if (tksqsj.TKQJSZ == 0) tksqsj.TKQJSZ = 0;//调课前结束周
            if (tksqsj.TKQXQ == 0) tksqsj.TKQXQ = 0;//调课前星期
            if (tksqsj.TKQSD == 0) tksqsj.TKQSD = 0;//调课前时段
            if (tksqsj.TKQJC == 0) tksqsj.TKQJC = 0;//调课前节次
            if (tksqsj.TKHQSZ == 0) tksqsj.TKHQSZ = 0;//调课后起始周
            if (tksqsj.TKHJSZ == 0) tksqsj.TKHJSZ = 0;//调课后结束周
            if (tksqsj.TKHXQ == 0) tksqsj.TKHXQ = 0;//调课后星期
            if (tksqsj.TKHSD == 0) tksqsj.TKHSD = 0;//调课后时段
            if (tksqsj.TKHJC == 0) tksqsj.TKHJC = 0;//调课后节次
            if (tksqsj.ZT == 0) tksqsj.ZT = 0;//当前状态
            if (string.IsNullOrEmpty(tksqsj.BZ)) tksqsj.BZ = "";//备注
            EDU_ELE_04_TKSQSJ tksqsj_model = db_ele.EDU_ELE_04_TKSQSJ.FirstOrDefault(e => e.ID == tksqsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tksqsj_model != null)
            {
                tksqsj_model.ID = tksqsj.ID;//编号
                tksqsj_model.SCHOOLID = tksqsj.SCHOOLID;//学校ID
                tksqsj_model.JSRKID = tksqsj.JSRKID;//教师任课ID
                tksqsj_model.TKLXID = tksqsj.TKLXID;//调课类型ID
                tksqsj_model.TKQQSZ = tksqsj.TKQQSZ;//调课前起始周
                tksqsj_model.TKQJSZ = tksqsj.TKQJSZ;//调课前结束周
                tksqsj_model.TKQXQ = tksqsj.TKQXQ;//调课前星期
                tksqsj_model.TKQSD = tksqsj.TKQSD;//调课前时段
                tksqsj_model.TKQJC = tksqsj.TKQJC;//调课前节次
                tksqsj_model.TKHQSZ = tksqsj.TKHQSZ;//调课后起始周
                tksqsj_model.TKHJSZ = tksqsj.TKHJSZ;//调课后结束周
                tksqsj_model.TKHXQ = tksqsj.TKHXQ;//调课后星期
                tksqsj_model.TKHSD = tksqsj.TKHSD;//调课后时段
                tksqsj_model.TKHJC = tksqsj.TKHJC;//调课后节次
                tksqsj_model.ZT = tksqsj.ZT;//当前状态
                tksqsj_model.BZ = tksqsj.BZ;//备注
                db_ele.Entry(tksqsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_04_TKSQSJ.Add(tksqsj);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_04_TKSQSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_04_TKSQSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_04_TKSQSJ tksqsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTksqsj(tksqsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tksqsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tksqsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_04_TKSQSJ tksqsj= db_ele.EDU_ELE_04_TKSQSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tksqsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_04_TKSQSJ tksqsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdTksqsj(tksqsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tksqsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tksqsj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_04_TKSQSJ tksqsj = db_ele.EDU_ELE_04_TKSQSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_04_TKSQSJ.Remove(tksqsj);
                db_ele.SaveChanges();
                return "删除成功！";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "删除出错！" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "删除出错！" + e.Message;
            }
        }*/

        public String Delete(String idLst)
        {
            try
            {
                int[] idlst = Utils.Utils.GetSafeIdsArr(idLst, LDALConstant.DefSpear);
                foreach (int id in idlst)
                {
                    EDU_ELE_04_TKSQSJ tksqsj = db_ele.EDU_ELE_04_TKSQSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_04_TKSQSJ.Remove(tksqsj);
                    db_ele.SaveChanges();
                }
                return "删除成功！";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "删除出错！" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "删除出错！" + e.Message;
            }
        }

        private static int Max_TKSQSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取调课申请数据表最大ID
        public int GetMax_TKSQSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TKSQSJ_ID == 0)
                {
                    EDU_ELE_04_TKSQSJ tksqsj = db_ele.EDU_ELE_04_TKSQSJ.FirstOrDefault();
                    if (tksqsj == null)
                    {
                        Max_TKSQSJ_ID = 1;
                    }
                    else
                    {
                        //Max_TKSQSJ_ID = db_ele.EDU_ELE_04_TKSQSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TKSQSJ_ID++;
                }
                maxId = Max_TKSQSJ_ID;
            }
            return maxId;
        }

    }
}
