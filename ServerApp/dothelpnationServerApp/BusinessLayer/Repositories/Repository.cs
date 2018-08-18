using System;
using System.Data.Entity;
using System.Linq;
using DataAccessLayer.DataContext;

namespace BusinessLayer.Repositories
{
    public class Repository<T> : IRepository<T>
        where T : class, new()
    {
        // Craete new object from context 
        dothelpnationCS _data = new dothelpnationCS();
        public IQueryable<T> Get() 
        {
            return _data.Set<T>();
        }

        public T GetByIdentifier(int id)
        {
            return _data.Set<T>().Find(id);
        }

        public T Insert(T entity)
        {
            _data.Set<T>().Add(entity);
            return this.save() > 0 ? entity : null;
        }

        public bool Remove(int id)
        {
            var result_entity = _data.Set<T>().Find(id);
            _data.Set<T>().Remove(result_entity);
            return this.save() > 0 ? true : false;
        }

        public T Update(T entity)
        {
            _data.Entry(entity).State = EntityState.Modified;
            return this.save() > 0 ? entity : null;
        }

        public int save()
        {
           return _data.SaveChanges();
        }

        public int count()
        {
            return _data.Set<T>().Count();
        }

       
    }
}
