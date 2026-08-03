-- ایجاد Login (در سطح سرور)
use master
CREATE LOGIN timar7_user WITH PASSWORD = 'StrongPassword123!';

-- ایجاد User در دیتابیس انبار (مثلاً: BPMS_EhtemamJam)
USE BPMS_EhtemamJam; -- نام دیتابیس خود را جایگزین کنید
CREATE USER timar7_user FOR LOGIN timar7_user;

-- دادن دسترسی SELECT فقط روی ویوهای مورد نیاز
GRANT SELECT ON dbo.Anb_Master_P TO timar7_user;
GRANT SELECT ON dbo.Anb_Master_Details_P TO timar7_user;
GRANT SELECT ON dbo.Anb_Master_T TO timar7_user;
GRANT SELECT ON dbo.Anb_Master_Details_T TO timar7_user;