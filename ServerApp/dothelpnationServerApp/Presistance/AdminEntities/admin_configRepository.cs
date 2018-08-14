using System.Data.Entity.ModelConfiguration;
using Domain;
using Presistance.Shared;
using Application.Interface.Presistence;
namespace Presistance.AdminEntities
{
    class admin_configRepository 
        : Repository<admin_config> , IAdmin_ConfigurationRepository
    {
        admin_configRepository(IDataBaseContext database) 
            : base (database)
        { } 
    }
}
