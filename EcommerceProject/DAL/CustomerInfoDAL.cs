﻿using EcommerceProject.VM;

namespace EcommerceProject.DAL
{
    public class CustomerInfoDAL
    {
        public long TotalPrice(CustomerInfo customerInfo)
        {
            long total = 0;
            foreach (var item in customerInfo.orderDetails)
            {
                total += item.TotalPrice;
            }
            return total;
        }
    }
}