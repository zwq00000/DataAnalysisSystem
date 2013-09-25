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
    public class XQController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_05_XQ_DISP> model = db_ele.VIEW_EDU_ELE_05_XQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXq(EDU_ELE_05_XQ xq)
        {
            xq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXq(xq);
        }

        public void UpdXq(EDU_ELE_05_XQ xq)
        {
            //设置默认值
            if (xq.ID == 0) xq.ID = 0;//编号
            if (xq.SCHOOLID == 0) xq.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(xq.MC)) xq.MC = "";//名称
            EDU_ELE_05_XQ xq_model = db_ele.EDU_ELE_05_XQ.FirstOrDefault(e => e.ID == xq.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xq_model != null)
            {
                xq_model.ID = xq.ID;//编号
                xq_model.SCHOOLID = xq.SCHOOLID;//学校名   学校配置表
                xq_model.MC = xq.MC;//名称
                db_ele.Entry(xq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_05_XQ.Add(xq);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_05_XQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_05_XQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_05_XQ xq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXq(xq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_05_XQ xq= db_ele.EDU_ELE_05_XQ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_05_XQ xq)
        {
            InitViewBag();
            try
            {
                
                
                UpdXq(xq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xq);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_05_XQ xq = db_ele.EDU_ELE_05_XQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_05_XQ.Remove(xq);
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
                    EDU_ELE_05_XQ xq = db_ele.EDU_ELE_05_XQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_05_XQ.Remove(xq);
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

        private static int Max_XQ_ID = 0;
        private static object syncIDLock = new object();
        //获取星期最大ID
        public int GetMax_XQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XQ_ID == 0)
                {
                    EDU_ELE_05_XQ xq = db_ele.EDU_ELE_05_XQ.FirstOrDefault();
                    if (xq == null)
                    {
                        Max_XQ_ID = 1;
                    }
                    else
                    {
                        //Max_XQ_ID = db_ele.EDU_ELE_05_XQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XQ_ID++;
                }
                maxId = Max_XQ_ID;
            }
            return maxId;
        }

    }
}
