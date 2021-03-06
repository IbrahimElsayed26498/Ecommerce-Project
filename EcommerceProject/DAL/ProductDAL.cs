﻿using System;
using System.Collections.Generic;
using System.Linq;
using EcommerceProject.Models;

namespace EcommerceProject.DAL
{
    public class ProductDAL
    {
        EcommerceProjectEntities db = new EcommerceProjectEntities();
        public bool Add(Product product, out string message)
        {
            try
            {
                if(product != null)
                {
                    db.Product.Add(product);
                    db.SaveChanges();
                    message = "Added Successfuly";
                    return true;
                }
                message = "Product Empty";
                return false;
            }
            catch (Exception e)
            {
                message = e.Message;
                return false;
                
            }
        }

        public bool Edit(Product product, out string message)
        {
            try
            {
                Product obj = db.Product.Where(z => z.ID == product.ID).FirstOrDefault();
                if (obj != null)
                {
                    obj.Name = product.Name;
                    obj.Price= product.Price;
                    obj.Image = product.Image;
                    obj.BrandFK = product.BrandFK;
                    obj.Decription = product.Decription;
                    obj.CreationDate = product.CreationDate;
                    obj.UpdatedBy = product.UpdatedBy;
                    obj.UpdatedDate = DateTime.Now;
                    obj.CatFK = product.CatFK;
                    obj.SubCatFK = product.SubCatFK;
                    obj.IsBestSeller = product.IsBestSeller;
                    db.SaveChanges();
                    message = "Added successfully";
                    return true;
                }
                message = "product empty";
                return false;
            }
            catch (Exception e)
            {
                message = e.Message;
                return false;
            }
        }

        public bool Delete(long id)
        {
            try
            {
                Product obj = db.Product.Where(z => z.ID == id).FirstOrDefault();
                if (obj != null)
                {
                    db.Product.Remove(obj);
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

        public Product GetOne(long? id)
        {
            if (id == null)
            {
                return null;
            }

            return db.Product.Where(z => z.ID == id).FirstOrDefault();
        }
        public List<Product> FilterByBrand(long brandID)
        {
            return GetAll().Where(z => z.BrandFK == brandID).ToList();
        }
        public List<Product> FilterByCategory(long categoryID)
        {
            return GetAll().Where(z => z.CatFK == categoryID).ToList();
        }
        public List<Product> GetAll()
        {
            return db.Product.OrderByDescending(z => z.ID).ToList();
        }
        public List<Product> FilterByPrice(long price)
        {
            return GetAll().Where(z => z.Price == price).ToList();
        }
        public List<Product> FilterByColor(long id)
        {
            var items = new ProductColorDAL().GetAll().
                Where(z => z.ColorFk == id).Select(z => z.ProductFK).ToList();
            List<Product> products = new List<Product>();
            foreach (var item in items)
            {
                products.Add(new ProductDAL().GetOne(item));
            }
            return products;
        }
    }
}