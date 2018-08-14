using System.Linq;
using Application.Interface.Presistence;
using System.Data.Entity;
namespace Presistance.Shared
{
    class Repository<T>
        : IRepository<T>
        where T : class
    {
        private readonly IDataBaseContext _dataBase;
        public Repository(IDataBaseContext dataBase)
        {
            _dataBase = dataBase;
        }


        public void Add(T entity)
        {
            _dataBase.Set<T>().Add(entity);
        }

        public T Get(int id)
        {
            throw new System.NotImplementedException();
        }

        public IQueryable<T> GetAll()
        {
            throw new System.NotImplementedException();
        }

        public void Remove(T entity)
        {
            throw new System.NotImplementedException();
        }
    }
}
