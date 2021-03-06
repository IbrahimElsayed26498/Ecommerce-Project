﻿using System;
using System.Collections.Generic;
using System.Linq;
using EcommerceProject.Models;

namespace EcommerceProject.DAL
{
    public class OrderDetailsDAL
    {
        EcommerceProjectEntities db = new EcommerceProjectEntities();
        public bool Add(OrderDetails orderDetails, out string message)
        {
            try
            {
                if (orderDetails != null)
                {
                    db.OrderDetails.Add(orderDetails);
                    db.SaveChanges();
                    message = "Added Successflly";
                    return true;
                }
                message = "Empty order";
                return false;
            }
            catch (Exception e)
            {
                message = e.Message;
                return false;
            }

        }
        public bool Edit(OrderDetails orderDetails)
        {
            try
            {
                OrderDetails obj = db.OrderDetails.Where(z => z.ID == orderDetails.ID).FirstOrDefault();
                if (obj != null)
                {
                    obj.Price = orderDetails.Price;
                    obj.Quantity = orderDetails.Quantity;
                    obj.TotalPrice = orderDetails.TotalPrice;
                    obj.OrderFK = orderDetails.OrderFK;
                    obj.ProductFK = orderDetails.ProductFK;
                    obj.UpdatedBy = orderDetails.UpdatedBy;
                    obj.UpdatedDate = orderDetails.UpdatedDate;
                    db.SaveChanges();
                    return true;
                }
                return false;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public bool Delete(long id)
        {
            OrderDetails obj = db.OrderDetails.Where(z => z.ID == id).FirstOrDefault();
            try
            {
                if (obj != null)
                {
                    db.OrderDetails.Remove(obj);
                    db.SaveChanges();
                    return true;
                }
                return false;
            }
            catch (Exception e)
            {
                return false;
            }
        }

        public bool DeleteAll(long orderFK)
        {
            List<long> orderDetailsIdList = GetAll(orderFK).Select(z => z.ID).ToList();
            try
            {
                foreach (var item in orderDetailsIdList)
                {
                    Delete(item);
                }
                return true;
            }
            catch (Exception) {
                return false;
            }

        }
        public OrderDetails GetOne(long id)
        {
            return db.OrderDetails.Where(z => z.ID == id).FirstOrDefault();
        }
        public List<OrderDetails> GetAll()
        {
            return db.OrderDetails.ToList();
        }
        public List<OrderDetails> GetAll(long orderID)
        {
            return GetAll().Where(z => z.OrderFK == orderID).ToList();
        }
    }
}