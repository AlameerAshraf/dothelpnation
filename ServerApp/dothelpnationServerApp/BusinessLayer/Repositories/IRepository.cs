using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Repositories
{
    public interface IRepository<T> where T : class , new()
    {
        IQueryable<T> Get();

        T GetByIdentifier(int id);

        T Insert(T entity);

        T Update(T entity);

        bool Remove(int id);

        int save();
        int count();
    }
}
