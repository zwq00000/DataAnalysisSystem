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
using HanRuEdu.JWXT.Common;

namespace HanRuEdu.JWXT.Controllers.JWXT
{
    public class NWIPController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_MHXT_NWIP_DISP> model = db_wzxt.VIEW_EDU_WZXT_MHXT_NWIP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddNwip(EDU_WZXT_MHXT_NWIP nwip)
        {
            nwip.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdNwip(nwip);
        }

        public void UpdNwip(EDU_WZXT_MHXT_NWIP nwip)
        {
            //����Ĭ��ֵ
            if (nwip.ID == 0) nwip.ID = 0;//����IP����ID
            if (nwip.WEBID == 0) nwip.WEBID = 0;//��վID
            if (nwip.SCHOOLID == 0) nwip.SCHOOLID = 0;//ѧУ��
            if (string.IsNullOrEmpty(nwip.IP)) nwip.IP = "";//IP��ַ
            EDU_WZXT_MHXT_NWIP nwip_model = db_wzxt.EDU_WZXT_MHXT_NWIP.FirstOrDefault(e => e.ID == nwip.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (nwip_model != null)
            {
                nwip_model.ID = nwip.ID;//����IP����ID
                nwip_model.WEBID = nwip.WEBID;//��վID
                nwip_model.SCHOOLID = nwip.SCHOOLID;//ѧУ��
                nwip_model.IP = nwip.IP;//IP��ַ
                db_wzxt.Entry(nwip_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_wzxt.EDU_WZXT_MHXT_NWIP.Add(nwip);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_MHXT_NWIP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_MHXT_NWIP());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_MHXT_NWIP nwip)
        {
            InitViewBag();
            try
            {
                //
                //
                AddNwip(nwip);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(nwip);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(nwip);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_MHXT_NWIP nwip= db_wzxt.EDU_WZXT_MHXT_NWIP.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(nwip);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_MHXT_NWIP nwip)
        {
            InitViewBag();
            try
            {
                
                
                UpdNwip(nwip);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(nwip);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(nwip);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_WZXT_MHXT_NWIP nwip = db_wzxt.EDU_WZXT_MHXT_NWIP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_MHXT_NWIP.Remove(nwip);
                db_wzxt.SaveChanges();
                return "ɾ���ɹ���";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "ɾ��������" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "ɾ��������" + e.Message;
            }
        }*/

        public String Delete(String idLst)
        {
            try
            {
                int[] idlst = Utils.Utils.GetSafeIdsArr(idLst, LDALConstant.DefSpear);
                foreach (int id in idlst)
                {
                    EDU_WZXT_MHXT_NWIP nwip = db_wzxt.EDU_WZXT_MHXT_NWIP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_MHXT_NWIP.Remove(nwip);
                    db_wzxt.SaveChanges();
                }
                return "ɾ���ɹ���";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "ɾ��������" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "ɾ��������" + e.Message;
            }
        }

        private static int Max_NWIP_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ����IP�������ID
        public int GetMax_NWIP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_NWIP_ID == 0)
                {
                    EDU_WZXT_MHXT_NWIP nwip = db_wzxt.EDU_WZXT_MHXT_NWIP.FirstOrDefault();
                    if (nwip == null)
                    {
                        Max_NWIP_ID = 1;
                    }
                    else
                    {
                        //Max_NWIP_ID = db_wzxt.EDU_WZXT_MHXT_NWIP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_NWIP_ID++;
                }
                maxId = Max_NWIP_ID;
            }
            return maxId;
        }

    }
}