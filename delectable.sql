#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Users
#------------------------------------------------------------

CREATE TABLE Users(
        user_id                    int (11) Auto_increment  NOT NULL ,
        user_firstname             Varchar (50) NOT NULL ,
        user_lastname              Varchar (50) NOT NULL ,
        user_tel                   Varchar (15) NOT NULL ,
        user_mail                  Varchar (50) NOT NULL ,
        user_login                 Varchar (50) NOT NULL ,
        user_passwordHash          Varchar (50) NOT NULL ,
        user_oldPasswordHash       Varchar (50) NOT NULL ,
        user_mailConfirmationToken Varchar (50) NOT NULL ,
        user_passwordResetToken    Varchar (50) NOT NULL ,
        user_createDate            TimeStamp NOT NULL ,
        user_avatar                Varchar (50) NOT NULL ,
        user_description           Text NOT NULL ,
        user_slug                  Varchar (25) NOT NULL ,
        user_editDate              TimeStamp NOT NULL ,
        user_birthday              Date NOT NULL ,
        user_isActiv               Int NOT NULL ,
        role_id                    Int NOT NULL ,
        pays_id                    Int NOT NULL ,
        lang_id                    Int NOT NULL ,
        PRIMARY KEY (user_id ) ,
        UNIQUE (user_mail ,user_login )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Roles
#------------------------------------------------------------

CREATE TABLE Roles(
        role_id        int (11) Auto_increment  NOT NULL ,
        role_name      Varchar (50) NOT NULL ,
        role_creatDate TimeStamp NOT NULL ,
        role_editDate  TimeStamp NOT NULL ,
        PRIMARY KEY (role_id ) ,
        UNIQUE (role_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Permissions
#------------------------------------------------------------

CREATE TABLE Permissions(
        perm_id        int (11) Auto_increment  NOT NULL ,
        perm_name      Varchar (50) NOT NULL ,
        perm_creatDate TimeStamp NOT NULL ,
        perm_editDate  TimeStamp NOT NULL ,
        PRIMARY KEY (perm_id ) ,
        UNIQUE (perm_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Pays
#------------------------------------------------------------

CREATE TABLE Pays(
        pays_id       int (11) Auto_increment  NOT NULL ,
        pays_name     Varchar (50) NOT NULL ,
        pays_legalAge Int NOT NULL ,
        cont_id       Int NOT NULL ,
        PRIMARY KEY (pays_id ) ,
        UNIQUE (pays_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Continents
#------------------------------------------------------------

CREATE TABLE Continents(
        cont_id   int (11) Auto_increment  NOT NULL ,
        cont_name Varchar (50) NOT NULL ,
        PRIMARY KEY (cont_id ) ,
        UNIQUE (cont_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Langues
#------------------------------------------------------------

CREATE TABLE Langues(
        lang_id      int (11) Auto_increment  NOT NULL ,
        lang_name    Varchar (50) NOT NULL ,
        lang_readDir Varchar (25) NOT NULL ,
        PRIMARY KEY (lang_id ) ,
        UNIQUE (lang_name ,lang_readDir )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Historiques
#------------------------------------------------------------

CREATE TABLE Historiques(
        hist_id     int (11) Auto_increment  NOT NULL ,
        hist_action Varchar (100) NOT NULL ,
        hist_date   TimeStamp NOT NULL ,
        user_id     Int NOT NULL ,
        PRIMARY KEY (hist_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Commentaire
#------------------------------------------------------------

CREATE TABLE Commentaire(
        com_id        int (11) Auto_increment  NOT NULL ,
        com_creatDate TimeStamp NOT NULL ,
        com_editDate  TimeStamp NOT NULL ,
        com_text      Text NOT NULL ,
        com_isValid   Int NOT NULL ,
        user_id       Int NOT NULL ,
        rec_id        Int NOT NULL ,
        menu_id       Int NOT NULL ,
        PRIMARY KEY (com_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ustensiles
#------------------------------------------------------------

CREATE TABLE Ustensiles(
        ust_id        int (11) Auto_increment  NOT NULL ,
        ust_name      Varchar (50) NOT NULL ,
        ust_creatDate TimeStamp NOT NULL ,
        ust_editDate  TimeStamp NOT NULL ,
        img_id        Int NOT NULL ,
        PRIMARY KEY (ust_id ) ,
        UNIQUE (ust_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Tags
#------------------------------------------------------------

CREATE TABLE Tags(
        tag_id        int (11) Auto_increment  NOT NULL ,
        tag_name      Varchar (50) NOT NULL ,
        tag_creatDate TimeStamp NOT NULL ,
        tag_editDate  TimeStamp NOT NULL ,
        menu_id       Int NOT NULL ,
        PRIMARY KEY (tag_id ) ,
        UNIQUE (tag_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Aime
#------------------------------------------------------------

CREATE TABLE Aime(
        aime_id        int (11) Auto_increment  NOT NULL ,
        aime_creatDate TimeStamp NOT NULL ,
        aime_editDate  TimeStamp NOT NULL ,
        user_id        Int NOT NULL ,
        rec_id         Int NOT NULL ,
        menu_id        Int NOT NULL ,
        PRIMARY KEY (aime_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Videos
#------------------------------------------------------------

CREATE TABLE Videos(
        video_id         int (11) Auto_increment  NOT NULL ,
        video_name       Varchar (50) NOT NULL ,
        video_createDate TimeStamp NOT NULL ,
        video_editDate   TimeStamp NOT NULL ,
        video_lenght     Float NOT NULL ,
        video_ogg        Varchar (50) NOT NULL ,
        video_webm       Varchar (50) NOT NULL ,
        video_mp4        Varchar (50) NOT NULL ,
        video_desc       Text NOT NULL ,
        video_isValid    Int NOT NULL ,
        user_id          Int NOT NULL ,
        img_id           Int NOT NULL ,
        PRIMARY KEY (video_id ) ,
        UNIQUE (video_ogg ,video_webm ,video_mp4 )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Images
#------------------------------------------------------------

CREATE TABLE Images(
        img_id        int (11) Auto_increment  NOT NULL ,
        img_creatDate TimeStamp NOT NULL ,
        img_editDate  TimeStamp NOT NULL ,
        img_name      Varchar (50) NOT NULL ,
        img_desc      Text NOT NULL ,
        img_original  Varchar (50) NOT NULL ,
        img_100       Varchar (50) NOT NULL ,
        img_75        Varchar (50) NOT NULL ,
        img_50        Varchar (50) NOT NULL ,
        img_25        Varchar (50) NOT NULL ,
        img_isValid   Int NOT NULL ,
        user_id       Int NOT NULL ,
        ing_id        Int NOT NULL ,
        rec_id        Int NOT NULL ,
        catego_id     Int NOT NULL ,
        video_id      Int NOT NULL ,
        menu_id       Int NOT NULL ,
        ust_id        Int NOT NULL ,
        etape_id      Int NOT NULL ,
        PRIMARY KEY (img_id ) ,
        UNIQUE (img_original ,img_100 ,img_75 ,img_50 ,img_25 )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Regimes
#------------------------------------------------------------

CREATE TABLE Regimes(
        regim_id        int (11) Auto_increment  NOT NULL ,
        regim_name      Varchar (50) NOT NULL ,
        regim_creatDate TimeStamp NOT NULL ,
        regim_editDate  TimeStamp NOT NULL ,
        PRIMARY KEY (regim_id ) ,
        UNIQUE (regim_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Allergies
#------------------------------------------------------------

CREATE TABLE Allergies(
        alerg_id        int (11) Auto_increment  NOT NULL ,
        alerg_name      Varchar (50) NOT NULL ,
        alerg_creatDate TimeStamp NOT NULL ,
        alerg_editDate  TimeStamp NOT NULL ,
        PRIMARY KEY (alerg_id ) ,
        UNIQUE (alerg_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: IngredientTypes
#------------------------------------------------------------

CREATE TABLE IngredientTypes(
        ingTyp_id        int (11) Auto_increment  NOT NULL ,
        ingTyp_name      Varchar (50) NOT NULL ,
        ingTyp_creatDate TimeStamp NOT NULL ,
        ingTyp_editDate  TimeStamp NOT NULL ,
        PRIMARY KEY (ingTyp_id ) ,
        UNIQUE (ingTyp_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ingredients
#------------------------------------------------------------

CREATE TABLE Ingredients(
        ing_id        int (11) Auto_increment  NOT NULL ,
        ing_name      Varchar (50) NOT NULL ,
        ing_creatDate TimeStamp NOT NULL ,
        ing_editDate  TimeStamp NOT NULL ,
        ing_isValid   Int NOT NULL ,
        ingTyp_id     Int NOT NULL ,
        img_id        Int NOT NULL ,
        PRIMARY KEY (ing_id ) ,
        UNIQUE (ing_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Recettes
#------------------------------------------------------------

CREATE TABLE Recettes(
        rec_id        int (11) Auto_increment  NOT NULL ,
        rec_name      Varchar (50) NOT NULL ,
        rec_creatDate TimeStamp NOT NULL ,
        rec_editDate  TimeStamp NOT NULL ,
        rec_desc      Text NOT NULL ,
        rec_isPublic  Bool NOT NULL ,
        rec_diff      Int NOT NULL ,
        rec_slug      Varchar (25) NOT NULL ,
        user_id       Int NOT NULL ,
        img_id        Int NOT NULL ,
        PRIMARY KEY (rec_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Collections
#------------------------------------------------------------

CREATE TABLE Collections(
        collec_id        int (11) Auto_increment  NOT NULL ,
        collec_name      Varchar (50) NOT NULL ,
        collec_slug      Varchar (25) NOT NULL ,
        collec_creatDate TimeStamp NOT NULL ,
        collec_editDate  TimeStamp NOT NULL ,
        user_id          Int NOT NULL ,
        PRIMARY KEY (collec_id ) ,
        UNIQUE (collec_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Menus
#------------------------------------------------------------

CREATE TABLE Menus(
        menu_id        int (11) Auto_increment  NOT NULL ,
        menu_name      Varchar (50) NOT NULL ,
        menu_creatDate TimeStamp NOT NULL ,
        menu_editDate  TimeStamp NOT NULL ,
        menu_slug      Varchar (25) NOT NULL ,
        user_id        Int NOT NULL ,
        img_id         Int NOT NULL ,
        PRIMARY KEY (menu_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Etapes
#------------------------------------------------------------

CREATE TABLE Etapes(
        etape_id        int (11) Auto_increment  NOT NULL ,
        etape_name      Varchar (50) NOT NULL ,
        etape_time      Float NOT NULL ,
        etape_text      Text NOT NULL ,
        etape_creatDate TimeStamp NOT NULL ,
        etape_editDate  TimeStamp NOT NULL ,
        PRIMARY KEY (etape_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Categories
#------------------------------------------------------------

CREATE TABLE Categories(
        catego_id        int (11) Auto_increment  NOT NULL ,
        catego_name      Varchar (50) NOT NULL ,
        catego_creatDate TimeStamp NOT NULL ,
        catego_editDate  TimeStamp NOT NULL ,
        catego_freq      Int NOT NULL ,
        catego_desc      Text NOT NULL ,
        img_id           Int NOT NULL ,
        PRIMARY KEY (catego_id ) ,
        UNIQUE (catego_name )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation7
#------------------------------------------------------------

CREATE TABLE relation7(
        user_id Int NOT NULL ,
        perm_id Int NOT NULL ,
        PRIMARY KEY (user_id ,perm_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation9
#------------------------------------------------------------

CREATE TABLE relation9(
        user_id  Int NOT NULL ,
        regim_id Int NOT NULL ,
        PRIMARY KEY (user_id ,regim_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation13
#------------------------------------------------------------

CREATE TABLE relation13(
        user_id   Int NOT NULL ,
        catego_id Int NOT NULL ,
        PRIMARY KEY (user_id ,catego_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation15
#------------------------------------------------------------

CREATE TABLE relation15(
        ing_id Int NOT NULL ,
        rec_id Int NOT NULL ,
        PRIMARY KEY (ing_id ,rec_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation17
#------------------------------------------------------------

CREATE TABLE relation17(
        ing_id   Int NOT NULL ,
        etape_id Int NOT NULL ,
        PRIMARY KEY (ing_id ,etape_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation18
#------------------------------------------------------------

CREATE TABLE relation18(
        regim_id Int NOT NULL ,
        ing_id   Int NOT NULL ,
        PRIMARY KEY (regim_id ,ing_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation19
#------------------------------------------------------------

CREATE TABLE relation19(
        ing_id   Int NOT NULL ,
        alerg_id Int NOT NULL ,
        PRIMARY KEY (ing_id ,alerg_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation21
#------------------------------------------------------------

CREATE TABLE relation21(
        rec_id  Int NOT NULL ,
        menu_id Int NOT NULL ,
        PRIMARY KEY (rec_id ,menu_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation24
#------------------------------------------------------------

CREATE TABLE relation24(
        rec_id Int NOT NULL ,
        tag_id Int NOT NULL ,
        PRIMARY KEY (rec_id ,tag_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation25
#------------------------------------------------------------

CREATE TABLE relation25(
        collec_id Int NOT NULL ,
        rec_id    Int NOT NULL ,
        PRIMARY KEY (collec_id ,rec_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation26
#------------------------------------------------------------

CREATE TABLE relation26(
        rec_id    Int NOT NULL ,
        catego_id Int NOT NULL ,
        PRIMARY KEY (rec_id ,catego_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation28
#------------------------------------------------------------

CREATE TABLE relation28(
        rec_id   Int NOT NULL ,
        etape_id Int NOT NULL ,
        PRIMARY KEY (rec_id ,etape_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation29
#------------------------------------------------------------

CREATE TABLE relation29(
        catego_id Int NOT NULL ,
        tag_id    Int NOT NULL ,
        PRIMARY KEY (catego_id ,tag_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation31
#------------------------------------------------------------

CREATE TABLE relation31(
        perm_id Int NOT NULL ,
        role_id Int NOT NULL ,
        PRIMARY KEY (perm_id ,role_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation35
#------------------------------------------------------------

CREATE TABLE relation35(
        menu_id   Int NOT NULL ,
        collec_id Int NOT NULL ,
        PRIMARY KEY (menu_id ,collec_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation38
#------------------------------------------------------------

CREATE TABLE relation38(
        tag_id    Int NOT NULL ,
        collec_id Int NOT NULL ,
        PRIMARY KEY (tag_id ,collec_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation41
#------------------------------------------------------------

CREATE TABLE relation41(
        etape_id Int NOT NULL ,
        ust_id   Int NOT NULL ,
        PRIMARY KEY (etape_id ,ust_id )
)ENGINE=InnoDB;

ALTER TABLE Users ADD CONSTRAINT FK_Users_role_id FOREIGN KEY (role_id) REFERENCES Roles(role_id);
ALTER TABLE Users ADD CONSTRAINT FK_Users_pays_id FOREIGN KEY (pays_id) REFERENCES Pays(pays_id);
ALTER TABLE Users ADD CONSTRAINT FK_Users_lang_id FOREIGN KEY (lang_id) REFERENCES Langues(lang_id);
ALTER TABLE Pays ADD CONSTRAINT FK_Pays_cont_id FOREIGN KEY (cont_id) REFERENCES Continents(cont_id);
ALTER TABLE Historiques ADD CONSTRAINT FK_Historiques_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE Commentaire ADD CONSTRAINT FK_Commentaire_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE Commentaire ADD CONSTRAINT FK_Commentaire_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE Commentaire ADD CONSTRAINT FK_Commentaire_menu_id FOREIGN KEY (menu_id) REFERENCES Menus(menu_id);
ALTER TABLE Ustensiles ADD CONSTRAINT FK_Ustensiles_img_id FOREIGN KEY (img_id) REFERENCES Images(img_id);
ALTER TABLE Tags ADD CONSTRAINT FK_Tags_menu_id FOREIGN KEY (menu_id) REFERENCES Menus(menu_id);
ALTER TABLE Aime ADD CONSTRAINT FK_Aime_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE Aime ADD CONSTRAINT FK_Aime_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE Aime ADD CONSTRAINT FK_Aime_menu_id FOREIGN KEY (menu_id) REFERENCES Menus(menu_id);
ALTER TABLE Videos ADD CONSTRAINT FK_Videos_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE Videos ADD CONSTRAINT FK_Videos_img_id FOREIGN KEY (img_id) REFERENCES Images(img_id);
ALTER TABLE Images ADD CONSTRAINT FK_Images_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE Images ADD CONSTRAINT FK_Images_ing_id FOREIGN KEY (ing_id) REFERENCES Ingredients(ing_id);
ALTER TABLE Images ADD CONSTRAINT FK_Images_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE Images ADD CONSTRAINT FK_Images_catego_id FOREIGN KEY (catego_id) REFERENCES Categories(catego_id);
ALTER TABLE Images ADD CONSTRAINT FK_Images_video_id FOREIGN KEY (video_id) REFERENCES Videos(video_id);
ALTER TABLE Images ADD CONSTRAINT FK_Images_menu_id FOREIGN KEY (menu_id) REFERENCES Menus(menu_id);
ALTER TABLE Images ADD CONSTRAINT FK_Images_ust_id FOREIGN KEY (ust_id) REFERENCES Ustensiles(ust_id);
ALTER TABLE Images ADD CONSTRAINT FK_Images_etape_id FOREIGN KEY (etape_id) REFERENCES Etapes(etape_id);
ALTER TABLE Ingredients ADD CONSTRAINT FK_Ingredients_ingTyp_id FOREIGN KEY (ingTyp_id) REFERENCES IngredientTypes(ingTyp_id);
ALTER TABLE Ingredients ADD CONSTRAINT FK_Ingredients_img_id FOREIGN KEY (img_id) REFERENCES Images(img_id);
ALTER TABLE Recettes ADD CONSTRAINT FK_Recettes_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE Recettes ADD CONSTRAINT FK_Recettes_img_id FOREIGN KEY (img_id) REFERENCES Images(img_id);
ALTER TABLE Collections ADD CONSTRAINT FK_Collections_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE Menus ADD CONSTRAINT FK_Menus_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE Menus ADD CONSTRAINT FK_Menus_img_id FOREIGN KEY (img_id) REFERENCES Images(img_id);
ALTER TABLE Categories ADD CONSTRAINT FK_Categories_img_id FOREIGN KEY (img_id) REFERENCES Images(img_id);
ALTER TABLE relation7 ADD CONSTRAINT FK_relation7_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE relation7 ADD CONSTRAINT FK_relation7_perm_id FOREIGN KEY (perm_id) REFERENCES Permissions(perm_id);
ALTER TABLE relation9 ADD CONSTRAINT FK_relation9_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE relation9 ADD CONSTRAINT FK_relation9_regim_id FOREIGN KEY (regim_id) REFERENCES Regimes(regim_id);
ALTER TABLE relation13 ADD CONSTRAINT FK_relation13_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);
ALTER TABLE relation13 ADD CONSTRAINT FK_relation13_catego_id FOREIGN KEY (catego_id) REFERENCES Categories(catego_id);
ALTER TABLE relation15 ADD CONSTRAINT FK_relation15_ing_id FOREIGN KEY (ing_id) REFERENCES Ingredients(ing_id);
ALTER TABLE relation15 ADD CONSTRAINT FK_relation15_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE relation17 ADD CONSTRAINT FK_relation17_ing_id FOREIGN KEY (ing_id) REFERENCES Ingredients(ing_id);
ALTER TABLE relation17 ADD CONSTRAINT FK_relation17_etape_id FOREIGN KEY (etape_id) REFERENCES Etapes(etape_id);
ALTER TABLE relation18 ADD CONSTRAINT FK_relation18_regim_id FOREIGN KEY (regim_id) REFERENCES Regimes(regim_id);
ALTER TABLE relation18 ADD CONSTRAINT FK_relation18_ing_id FOREIGN KEY (ing_id) REFERENCES Ingredients(ing_id);
ALTER TABLE relation19 ADD CONSTRAINT FK_relation19_ing_id FOREIGN KEY (ing_id) REFERENCES Ingredients(ing_id);
ALTER TABLE relation19 ADD CONSTRAINT FK_relation19_alerg_id FOREIGN KEY (alerg_id) REFERENCES Allergies(alerg_id);
ALTER TABLE relation21 ADD CONSTRAINT FK_relation21_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE relation21 ADD CONSTRAINT FK_relation21_menu_id FOREIGN KEY (menu_id) REFERENCES Menus(menu_id);
ALTER TABLE relation24 ADD CONSTRAINT FK_relation24_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE relation24 ADD CONSTRAINT FK_relation24_tag_id FOREIGN KEY (tag_id) REFERENCES Tags(tag_id);
ALTER TABLE relation25 ADD CONSTRAINT FK_relation25_collec_id FOREIGN KEY (collec_id) REFERENCES Collections(collec_id);
ALTER TABLE relation25 ADD CONSTRAINT FK_relation25_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE relation26 ADD CONSTRAINT FK_relation26_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE relation26 ADD CONSTRAINT FK_relation26_catego_id FOREIGN KEY (catego_id) REFERENCES Categories(catego_id);
ALTER TABLE relation28 ADD CONSTRAINT FK_relation28_rec_id FOREIGN KEY (rec_id) REFERENCES Recettes(rec_id);
ALTER TABLE relation28 ADD CONSTRAINT FK_relation28_etape_id FOREIGN KEY (etape_id) REFERENCES Etapes(etape_id);
ALTER TABLE relation29 ADD CONSTRAINT FK_relation29_catego_id FOREIGN KEY (catego_id) REFERENCES Categories(catego_id);
ALTER TABLE relation29 ADD CONSTRAINT FK_relation29_tag_id FOREIGN KEY (tag_id) REFERENCES Tags(tag_id);
ALTER TABLE relation31 ADD CONSTRAINT FK_relation31_perm_id FOREIGN KEY (perm_id) REFERENCES Permissions(perm_id);
ALTER TABLE relation31 ADD CONSTRAINT FK_relation31_role_id FOREIGN KEY (role_id) REFERENCES Roles(role_id);
ALTER TABLE relation35 ADD CONSTRAINT FK_relation35_menu_id FOREIGN KEY (menu_id) REFERENCES Menus(menu_id);
ALTER TABLE relation35 ADD CONSTRAINT FK_relation35_collec_id FOREIGN KEY (collec_id) REFERENCES Collections(collec_id);
ALTER TABLE relation38 ADD CONSTRAINT FK_relation38_tag_id FOREIGN KEY (tag_id) REFERENCES Tags(tag_id);
ALTER TABLE relation38 ADD CONSTRAINT FK_relation38_collec_id FOREIGN KEY (collec_id) REFERENCES Collections(collec_id);
ALTER TABLE relation41 ADD CONSTRAINT FK_relation41_etape_id FOREIGN KEY (etape_id) REFERENCES Etapes(etape_id);
ALTER TABLE relation41 ADD CONSTRAINT FK_relation41_ust_id FOREIGN KEY (ust_id) REFERENCES Ustensiles(ust_id);
