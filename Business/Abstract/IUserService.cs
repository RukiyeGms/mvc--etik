
using Entities.Concrete;
using Entities.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface IUserService
    {
        //giriş sayfası servisleri
      
       //sadece user tokenini kontrol et 
        Users controlToken(Users user);  

        //anasayfada çalışacak servis 
        int getConfirmationCount(); //onaylanma sayısı
        int getApplicationCount();//başvuru sayısı


        //başvuru sayfasındaki istekler
        void DeleteApply(Users user);//başvuru sil
        List<Users> GetApplyforStudent();//tarih-başlık-durum-karar işlem
        

        //başvuru detayları üst üste gelen doldurma sayfası-- update detail dersek yine bu sayfalara dönmeliyiz
        void addPersonalInfo(PersonalInfo personalInfo);
        void addApplicationInfo(Users user);
        void addFile(Users user);
        //başvuruları düzenle dersek alttaki üç metodu sırasıyla gezmeli
        void updatePersonalInfo(Users users); 
        void updateApplicationInfo(Users users);
        void updateFile(Users users);


        //adminin yapacağı işlemler
        List<Users> GetAll(Expression<Func<Users, bool>> filter = null);//userları getir
        void changeProjectstatus(Users user); //admin kullanıcının başvurusnun durumunu günceller
        List<ApplyTable> GetApply(int id); //tm başvuruları getir-admin için--USER'IN BAŞVURULARINI GETİR

    }
}
