PGDMP     -                
    w            DUC    12.0    12.0 g    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    DUC    DATABASE     �   CREATE DATABASE "DUC" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "DUC";
                postgres    false            �            1259    16420    ADMINISTRADOR    TABLE     �   CREATE TABLE "public"."ADMINISTRADOR" (
    "Id_administrador" integer NOT NULL,
    "Nombre" character(150),
    "Apellidos" character(200),
    "Cargo" character(100)
);
 %   DROP TABLE "public"."ADMINISTRADOR";
       public         heap    postgres    false            �            1259    16506 "   ADMINISTRADOR_Id_administrador_seq    SEQUENCE     �   ALTER TABLE "public"."ADMINISTRADOR" ALTER COLUMN "Id_administrador" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."ADMINISTRADOR_Id_administrador_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    206            �            1259    16563    COMPETENCIAS-TEC    TABLE     �   CREATE TABLE "public"."COMPETENCIAS-TEC" (
    "Id_competencia_tec" integer NOT NULL,
    "Id_form" integer NOT NULL,
    "Habilidad" character(100)
);
 (   DROP TABLE "public"."COMPETENCIAS-TEC";
       public         heap    postgres    false            �            1259    16561 '   COMPETENCIAS-TEC_Id_competencia_tec_seq    SEQUENCE       ALTER TABLE "public"."COMPETENCIAS-TEC" ALTER COLUMN "Id_competencia_tec" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."COMPETENCIAS-TEC_Id_competencia_tec_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    16540    DATOS-FAMILIARES    TABLE     
  CREATE TABLE "public"."DATOS-FAMILIARES" (
    "Id_dato_familiar" integer NOT NULL,
    "Id_form" integer NOT NULL,
    "Nombre" character(100),
    "Parentesco" character(60),
    "Fecha_Nacimineto" "date",
    "Ocupacion" character(150),
    "Telefono" integer
);
 (   DROP TABLE "public"."DATOS-FAMILIARES";
       public         heap    postgres    false            �            1259    16538 %   DATOS-FAMILIARES_Id_dato_familiar_seq    SEQUENCE       ALTER TABLE "public"."DATOS-FAMILIARES" ALTER COLUMN "Id_dato_familiar" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."DATOS-FAMILIARES_Id_dato_familiar_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    16433    DETALLE_PROCESO    TABLE     �   CREATE TABLE "public"."DETALLE_PROCESO" (
    "Id_detalle_proceso" integer NOT NULL,
    "Id_proceso" integer NOT NULL,
    "Id_formato" integer NOT NULL
);
 '   DROP TABLE "public"."DETALLE_PROCESO";
       public         heap    postgres    false            �            1259    16508 &   DETALLE_PROCESO_Id_detalle_proceso_seq    SEQUENCE       ALTER TABLE "public"."DETALLE_PROCESO" ALTER COLUMN "Id_detalle_proceso" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."DETALLE_PROCESO_Id_detalle_proceso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    208            �            1259    16443 
   DOCUMENTOS    TABLE       CREATE TABLE "public"."DOCUMENTOS" (
    "Id_documento" integer NOT NULL,
    "Id_estudiante" integer NOT NULL,
    "Fecha_subida" "date",
    "Status" character(11),
    "Url" character(500),
    "Id_detalle_proceso" integer NOT NULL,
    "Tipo_documento" character(50) NOT NULL
);
 "   DROP TABLE "public"."DOCUMENTOS";
       public         heap    postgres    false            �            1259    16510    DOCUMENTOS_Id_documento_seq    SEQUENCE     �   ALTER TABLE "public"."DOCUMENTOS" ALTER COLUMN "Id_documento" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."DOCUMENTOS_Id_documento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            �            1259    16556 	   EDUCACION    TABLE       CREATE TABLE "public"."EDUCACION" (
    "Id_educacion" integer NOT NULL,
    "Id_form" integer NOT NULL,
    "Estudios" character(15),
    "Centro_Educativo" character(150),
    "Fecha_inicio" "date",
    "Fecha_final" "date",
    "Grado_obtenido" character(70),
    "Actual" boolean
);
 !   DROP TABLE "public"."EDUCACION";
       public         heap    postgres    false            �            1259    16554    EDUCACION_Id_educacion_seq    SEQUENCE     �   ALTER TABLE "public"."EDUCACION" ALTER COLUMN "Id_educacion" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."EDUCACION_Id_educacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    16412    ESTUDIANTES    TABLE     �   CREATE TABLE "public"."ESTUDIANTES" (
    "Id_cuenta" integer NOT NULL,
    "Nombre" character(100),
    "Apelldos" character(100),
    "Centro_educativo" character(150),
    "Carrera" character(150)
);
 #   DROP TABLE "public"."ESTUDIANTES";
       public         heap    postgres    false            �            1259    16512    ESTUDIANTES_Id_cuenta_seq    SEQUENCE     �   ALTER TABLE "public"."ESTUDIANTES" ALTER COLUMN "Id_cuenta" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."ESTUDIANTES_Id_cuenta_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205            �            1259    16404    ETAPA    TABLE     �   CREATE TABLE "public"."ETAPA" (
    "Id_etapa" integer NOT NULL,
    "Nombre_etapa" character(10) NOT NULL,
    "Descripcion" character(1000)
);
    DROP TABLE "public"."ETAPA";
       public         heap    postgres    false            �            1259    16514    ETAPA_Id_etapa_seq    SEQUENCE     �   ALTER TABLE "public"."ETAPA" ALTER COLUMN "Id_etapa" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."ETAPA_Id_etapa_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            �            1259    16577    EXPERIENCIAS-LABORAL    TABLE     J  CREATE TABLE "public"."EXPERIENCIAS-LABORAL" (
    "Id_experiencias_laboral" integer NOT NULL,
    "Id_form" integer NOT NULL,
    "Nombre_Empresa" character(150),
    "Fecha_inicio" "date",
    "Fecha_fin" "date",
    "Puesto_ocupado" character(150),
    "Nombre_supervisor" character(100),
    "Motivo_salida" character(150)
);
 ,   DROP TABLE "public"."EXPERIENCIAS-LABORAL";
       public         heap    postgres    false            �            1259    16575 0   EXPERIENCIAS-LABORAL_Id_experiencias_laboral_seq    SEQUENCE       ALTER TABLE "public"."EXPERIENCIAS-LABORAL" ALTER COLUMN "Id_experiencias_laboral" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."EXPERIENCIAS-LABORAL_Id_experiencias_laboral_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            �            1259    16529 	   FORM-INFO    TABLE     T  CREATE TABLE "public"."FORM-INFO" (
    "Id_form" integer NOT NULL,
    "Id_cuenta" integer NOT NULL,
    "Nombre" character(100),
    "Tipo_identidad" character(50),
    "Doc_identidad" integer,
    "Luegar_nacimiento" character(200),
    "Apellido" character(150),
    "Estado_Civil" character(150),
    "Fecha_Nacimiento" "date",
    "Calle" character(150),
    "Edificio" character(50),
    "No_casa" integer,
    "Sector" character(100),
    "Ciudad" character(100),
    "Telefono" integer,
    "Celular" integer,
    "Correo_Electronico" character(150),
    "Curso_Banca" character(100)
);
 !   DROP TABLE "public"."FORM-INFO";
       public         heap    postgres    false            �            1259    16545    FORM-INFO_Id_form_seq    SEQUENCE     �   ALTER TABLE "public"."FORM-INFO" ALTER COLUMN "Id_form" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."FORM-INFO_Id_form_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    16438    FORMATO    TABLE     �   CREATE TABLE "public"."FORMATO" (
    "Id_formato" integer NOT NULL,
    "Nombre_formato" character(100),
    "Descripcion" character(200)
);
    DROP TABLE "public"."FORMATO";
       public         heap    postgres    false            �            1259    16516    FORMATO_Id_formato_seq    SEQUENCE     �   ALTER TABLE "public"."FORMATO" ALTER COLUMN "Id_formato" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."FORMATO_Id_formato_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            �            1259    16570    IDIOMAS    TABLE     �   CREATE TABLE "public"."IDIOMAS" (
    "Id_idiomas" integer NOT NULL,
    "Id_form" integer NOT NULL,
    "Nombre_Idioma" character(25),
    "Lee" boolean,
    "Habla" boolean,
    "Escribe" boolean
);
    DROP TABLE "public"."IDIOMAS";
       public         heap    postgres    false            �            1259    16568    IDIOMAS_Id_idiomas_seq    SEQUENCE     �   ALTER TABLE "public"."IDIOMAS" ALTER COLUMN "Id_idiomas" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."IDIOMAS_Id_idiomas_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    16547    INFO-EMERGENCIA    TABLE     {   CREATE TABLE "public"."INFO-EMERGENCIA" (
    "Id_emergencia" integer NOT NULL,
    "Id_dato_familiar" integer NOT NULL
);
 '   DROP TABLE "public"."INFO-EMERGENCIA";
       public         heap    postgres    false            �            1259    16552 !   INFO-EMERGENCIA_Id_emergencia_seq    SEQUENCE     �   ALTER TABLE "public"."INFO-EMERGENCIA" ALTER COLUMN "Id_emergencia" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."INFO-EMERGENCIA_Id_emergencia_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    16399    PIN    TABLE     �   CREATE TABLE "public"."PIN" (
    "Id_pin" integer NOT NULL,
    "Pin" integer NOT NULL,
    "Status" character(11) NOT NULL
);
    DROP TABLE "public"."PIN";
       public         heap    postgres    false            �            1259    16518    PIN_Id_pin_seq    SEQUENCE     �   ALTER TABLE "public"."PIN" ALTER COLUMN "Id_pin" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."PIN_Id_pin_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203            �            1259    16425    PROCESO    TABLE     *  CREATE TABLE "public"."PROCESO" (
    "Descripcion" character(500),
    "Fecha_publicacion" "date",
    "Id_cuenta" integer NOT NULL,
    "Id_etapa" integer NOT NULL,
    "Titulo" character(200),
    "Id_proceso" integer NOT NULL,
    "Fecha_entrega" "date",
    "Id_promocion" integer NOT NULL
);
    DROP TABLE "public"."PROCESO";
       public         heap    postgres    false            �            1259    16520    PROCESO_Id_cuenta_seq    SEQUENCE     �   ALTER TABLE "public"."PROCESO" ALTER COLUMN "Id_cuenta" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."PROCESO_Id_cuenta_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207            �            1259    16499 	   PROMOCION    TABLE     q   CREATE TABLE "public"."PROMOCION" (
    "Id_promocion" integer NOT NULL,
    "Anio_promocion" "date" NOT NULL
);
 !   DROP TABLE "public"."PROMOCION";
       public         heap    postgres    false            �            1259    16504    PROMOCION_Id_promocion_seq    SEQUENCE     �   ALTER TABLE "public"."PROMOCION" ALTER COLUMN "Id_promocion" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."PROMOCION_Id_promocion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211            �            1259    16587    REFERENCIA-PERSONAL    TABLE     �   CREATE TABLE "public"."REFERENCIA-PERSONAL" (
    "Id_referencia_personal" integer NOT NULL,
    "Id_form" integer NOT NULL,
    "Nombre" character(1),
    "Telefono" integer,
    "Tiempo_conoce" character(1),
    "Ocupacion" character(1)
);
 +   DROP TABLE "public"."REFERENCIA-PERSONAL";
       public         heap    postgres    false            �            1259    16585 .   REFERENCIA-PERSONAL_Id_referencia_personal_seq    SEQUENCE       ALTER TABLE "public"."REFERENCIA-PERSONAL" ALTER COLUMN "Id_referencia_personal" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."REFERENCIA-PERSONAL_Id_referencia_personal_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            �            1259    16394    USUARIO    TABLE     �   CREATE TABLE "public"."USUARIO" (
    "Id_user" integer NOT NULL,
    "Tipo_cuenta" "char" NOT NULL,
    "Id_cuenta" integer NOT NULL,
    "Usuario" character(15),
    "Pass" character(15),
    "Status" boolean
);
    DROP TABLE "public"."USUARIO";
       public         heap    postgres    false            �            1259    16522    USUARIO_Id_user_seq    SEQUENCE     �   ALTER TABLE "public"."USUARIO" ALTER COLUMN "Id_user" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "public"."USUARIO_Id_user_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    202            �          0    16420    ADMINISTRADOR 
   TABLE DATA                 public          postgres    false    206   �|       �          0    16563    COMPETENCIAS-TEC 
   TABLE DATA                 public          postgres    false    231   �|       �          0    16540    DATOS-FAMILIARES 
   TABLE DATA                 public          postgres    false    224   �|       �          0    16433    DETALLE_PROCESO 
   TABLE DATA                 public          postgres    false    208   �|       �          0    16443 
   DOCUMENTOS 
   TABLE DATA                 public          postgres    false    210   }       �          0    16556 	   EDUCACION 
   TABLE DATA                 public          postgres    false    229   -}       �          0    16412    ESTUDIANTES 
   TABLE DATA                 public          postgres    false    205   G}       �          0    16404    ETAPA 
   TABLE DATA                 public          postgres    false    204   a}       �          0    16577    EXPERIENCIAS-LABORAL 
   TABLE DATA                 public          postgres    false    235   {}       �          0    16529 	   FORM-INFO 
   TABLE DATA                 public          postgres    false    222   �}       �          0    16438    FORMATO 
   TABLE DATA                 public          postgres    false    209   �}       �          0    16570    IDIOMAS 
   TABLE DATA                 public          postgres    false    233   �}       �          0    16547    INFO-EMERGENCIA 
   TABLE DATA                 public          postgres    false    226   �}       �          0    16399    PIN 
   TABLE DATA                 public          postgres    false    203   �}       �          0    16425    PROCESO 
   TABLE DATA                 public          postgres    false    207   ~       �          0    16499 	   PROMOCION 
   TABLE DATA                 public          postgres    false    211   1~       �          0    16587    REFERENCIA-PERSONAL 
   TABLE DATA                 public          postgres    false    237   K~       �          0    16394    USUARIO 
   TABLE DATA                 public          postgres    false    202   e~       �           0    0 "   ADMINISTRADOR_Id_administrador_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"public"."ADMINISTRADOR_Id_administrador_seq"', 1, false);
          public          postgres    false    213            �           0    0 '   COMPETENCIAS-TEC_Id_competencia_tec_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"public"."COMPETENCIAS-TEC_Id_competencia_tec_seq"', 1, false);
          public          postgres    false    230            �           0    0 %   DATOS-FAMILIARES_Id_dato_familiar_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"public"."DATOS-FAMILIARES_Id_dato_familiar_seq"', 1, false);
          public          postgres    false    223            �           0    0 &   DETALLE_PROCESO_Id_detalle_proceso_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"public"."DETALLE_PROCESO_Id_detalle_proceso_seq"', 1, false);
          public          postgres    false    214            �           0    0    DOCUMENTOS_Id_documento_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"public"."DOCUMENTOS_Id_documento_seq"', 1, false);
          public          postgres    false    215            �           0    0    EDUCACION_Id_educacion_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"public"."EDUCACION_Id_educacion_seq"', 1, false);
          public          postgres    false    228            �           0    0    ESTUDIANTES_Id_cuenta_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"public"."ESTUDIANTES_Id_cuenta_seq"', 1, false);
          public          postgres    false    216            �           0    0    ETAPA_Id_etapa_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"public"."ETAPA_Id_etapa_seq"', 1, false);
          public          postgres    false    217            �           0    0 0   EXPERIENCIAS-LABORAL_Id_experiencias_laboral_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('"public"."EXPERIENCIAS-LABORAL_Id_experiencias_laboral_seq"', 1, false);
          public          postgres    false    234            �           0    0    FORM-INFO_Id_form_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"public"."FORM-INFO_Id_form_seq"', 1, false);
          public          postgres    false    225            �           0    0    FORMATO_Id_formato_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"public"."FORMATO_Id_formato_seq"', 1, false);
          public          postgres    false    218            �           0    0    IDIOMAS_Id_idiomas_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"public"."IDIOMAS_Id_idiomas_seq"', 1, false);
          public          postgres    false    232            �           0    0 !   INFO-EMERGENCIA_Id_emergencia_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"public"."INFO-EMERGENCIA_Id_emergencia_seq"', 1, false);
          public          postgres    false    227            �           0    0    PIN_Id_pin_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"public"."PIN_Id_pin_seq"', 1, false);
          public          postgres    false    219            �           0    0    PROCESO_Id_cuenta_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"public"."PROCESO_Id_cuenta_seq"', 1, false);
          public          postgres    false    220            �           0    0    PROMOCION_Id_promocion_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"public"."PROMOCION_Id_promocion_seq"', 1, false);
          public          postgres    false    212            �           0    0 .   REFERENCIA-PERSONAL_Id_referencia_personal_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('"public"."REFERENCIA-PERSONAL_Id_referencia_personal_seq"', 1, false);
          public          postgres    false    236            �           0    0    USUARIO_Id_user_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"public"."USUARIO_Id_user_seq"', 1, false);
          public          postgres    false    221            �
           2606    16424     ADMINISTRADOR Administrador_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY "public"."ADMINISTRADOR"
    ADD CONSTRAINT "Administrador_pkey" PRIMARY KEY ("Id_administrador");
 P   ALTER TABLE ONLY "public"."ADMINISTRADOR" DROP CONSTRAINT "Administrador_pkey";
       public            postgres    false    206            	           2606    16567 &   COMPETENCIAS-TEC COMPETENCIAS-TEC_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "public"."COMPETENCIAS-TEC"
    ADD CONSTRAINT "COMPETENCIAS-TEC_pkey" PRIMARY KEY ("Id_competencia_tec", "Id_form");
 V   ALTER TABLE ONLY "public"."COMPETENCIAS-TEC" DROP CONSTRAINT "COMPETENCIAS-TEC_pkey";
       public            postgres    false    231    231                       2606    16544 &   DATOS-FAMILIARES DATOS-FAMILIARES_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "public"."DATOS-FAMILIARES"
    ADD CONSTRAINT "DATOS-FAMILIARES_pkey" PRIMARY KEY ("Id_dato_familiar");
 V   ALTER TABLE ONLY "public"."DATOS-FAMILIARES" DROP CONSTRAINT "DATOS-FAMILIARES_pkey";
       public            postgres    false    224            �
           2606    16450    DOCUMENTOS DETALLE_FORMATO_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "public"."DOCUMENTOS"
    ADD CONSTRAINT "DETALLE_FORMATO_pkey" PRIMARY KEY ("Id_documento");
 O   ALTER TABLE ONLY "public"."DOCUMENTOS" DROP CONSTRAINT "DETALLE_FORMATO_pkey";
       public            postgres    false    210            �
           2606    16437 $   DETALLE_PROCESO DETALLE_PROCESO_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "public"."DETALLE_PROCESO"
    ADD CONSTRAINT "DETALLE_PROCESO_pkey" PRIMARY KEY ("Id_detalle_proceso");
 T   ALTER TABLE ONLY "public"."DETALLE_PROCESO" DROP CONSTRAINT "DETALLE_PROCESO_pkey";
       public            postgres    false    208                       2606    16560    EDUCACION EDUCACION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "public"."EDUCACION"
    ADD CONSTRAINT "EDUCACION_pkey" PRIMARY KEY ("Id_educacion");
 H   ALTER TABLE ONLY "public"."EDUCACION" DROP CONSTRAINT "EDUCACION_pkey";
       public            postgres    false    229            �
           2606    16419    ESTUDIANTES ESTUDIANTES_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "public"."ESTUDIANTES"
    ADD CONSTRAINT "ESTUDIANTES_pkey" PRIMARY KEY ("Id_cuenta");
 L   ALTER TABLE ONLY "public"."ESTUDIANTES" DROP CONSTRAINT "ESTUDIANTES_pkey";
       public            postgres    false    205            �
           2606    16411    ETAPA ETAPA_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "public"."ETAPA"
    ADD CONSTRAINT "ETAPA_pkey" PRIMARY KEY ("Id_etapa");
 @   ALTER TABLE ONLY "public"."ETAPA" DROP CONSTRAINT "ETAPA_pkey";
       public            postgres    false    204                       2606    16581 .   EXPERIENCIAS-LABORAL EXPERIENCIAS-LABORAL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "public"."EXPERIENCIAS-LABORAL"
    ADD CONSTRAINT "EXPERIENCIAS-LABORAL_pkey" PRIMARY KEY ("Id_experiencias_laboral");
 ^   ALTER TABLE ONLY "public"."EXPERIENCIAS-LABORAL" DROP CONSTRAINT "EXPERIENCIAS-LABORAL_pkey";
       public            postgres    false    235                       2606    16536    FORM-INFO FORM-INFO_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "public"."FORM-INFO"
    ADD CONSTRAINT "FORM-INFO_pkey" PRIMARY KEY ("Id_form");
 H   ALTER TABLE ONLY "public"."FORM-INFO" DROP CONSTRAINT "FORM-INFO_pkey";
       public            postgres    false    222            �
           2606    16442    FORMATO FORMATO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "public"."FORMATO"
    ADD CONSTRAINT "FORMATO_pkey" PRIMARY KEY ("Id_formato");
 D   ALTER TABLE ONLY "public"."FORMATO" DROP CONSTRAINT "FORMATO_pkey";
       public            postgres    false    209                       2606    16574    IDIOMAS IDIOMAS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "public"."IDIOMAS"
    ADD CONSTRAINT "IDIOMAS_pkey" PRIMARY KEY ("Id_idiomas");
 D   ALTER TABLE ONLY "public"."IDIOMAS" DROP CONSTRAINT "IDIOMAS_pkey";
       public            postgres    false    233                       2606    16551 $   INFO-EMERGENCIA INFO-EMERGENCIA_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "public"."INFO-EMERGENCIA"
    ADD CONSTRAINT "INFO-EMERGENCIA_pkey" PRIMARY KEY ("Id_emergencia");
 T   ALTER TABLE ONLY "public"."INFO-EMERGENCIA" DROP CONSTRAINT "INFO-EMERGENCIA_pkey";
       public            postgres    false    226            �
           2606    16403    PIN PIN_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY "public"."PIN"
    ADD CONSTRAINT "PIN_pkey" PRIMARY KEY ("Id_pin");
 <   ALTER TABLE ONLY "public"."PIN" DROP CONSTRAINT "PIN_pkey";
       public            postgres    false    203            �
           2606    16432    PROCESO PROCESO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "public"."PROCESO"
    ADD CONSTRAINT "PROCESO_pkey" PRIMARY KEY ("Id_proceso");
 D   ALTER TABLE ONLY "public"."PROCESO" DROP CONSTRAINT "PROCESO_pkey";
       public            postgres    false    207            �
           2606    16503    PROMOCION PROMOCION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "public"."PROMOCION"
    ADD CONSTRAINT "PROMOCION_pkey" PRIMARY KEY ("Id_promocion");
 H   ALTER TABLE ONLY "public"."PROMOCION" DROP CONSTRAINT "PROMOCION_pkey";
       public            postgres    false    211                       2606    16591 ,   REFERENCIA-PERSONAL REFERENCIA-PERSONAL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "public"."REFERENCIA-PERSONAL"
    ADD CONSTRAINT "REFERENCIA-PERSONAL_pkey" PRIMARY KEY ("Id_referencia_personal");
 \   ALTER TABLE ONLY "public"."REFERENCIA-PERSONAL" DROP CONSTRAINT "REFERENCIA-PERSONAL_pkey";
       public            postgres    false    237            �
           2606    16398    USUARIO USUARIO_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "public"."USUARIO"
    ADD CONSTRAINT "USUARIO_pkey" PRIMARY KEY ("Id_user");
 D   ALTER TABLE ONLY "public"."USUARIO" DROP CONSTRAINT "USUARIO_pkey";
       public            postgres    false    202            �
           1259    16456    fki_fkid_cuenta    INDEX     R   CREATE INDEX "fki_fkid_cuenta" ON "public"."USUARIO" USING "btree" ("Id_cuenta");
 '   DROP INDEX "public"."fki_fkid_cuenta";
       public            postgres    false    202                       2606    16524 !   PROCESO PROCESO_Id_promocion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."PROCESO"
    ADD CONSTRAINT "PROCESO_Id_promocion_fkey" FOREIGN KEY ("Id_promocion") REFERENCES "public"."PROMOCION"("Id_promocion");
 Q   ALTER TABLE ONLY "public"."PROCESO" DROP CONSTRAINT "PROCESO_Id_promocion_fkey";
       public          postgres    false    207    211    2815                       2606    16469    PROCESO fk_etapa_p    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."PROCESO"
    ADD CONSTRAINT "fk_etapa_p" FOREIGN KEY ("Id_etapa") REFERENCES "public"."ETAPA"("Id_etapa");
 B   ALTER TABLE ONLY "public"."PROCESO" DROP CONSTRAINT "fk_etapa_p";
       public          postgres    false    204    2801    207                       2606    16457    USUARIO fkid_admin    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."USUARIO"
    ADD CONSTRAINT "fkid_admin" FOREIGN KEY ("Id_cuenta") REFERENCES "public"."ADMINISTRADOR"("Id_administrador");
 B   ALTER TABLE ONLY "public"."USUARIO" DROP CONSTRAINT "fkid_admin";
       public          postgres    false    202    206    2805                       2606    16451    USUARIO fkid_cuenta    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."USUARIO"
    ADD CONSTRAINT "fkid_cuenta" FOREIGN KEY ("Id_cuenta") REFERENCES "public"."ESTUDIANTES"("Id_cuenta");
 C   ALTER TABLE ONLY "public"."USUARIO" DROP CONSTRAINT "fkid_cuenta";
       public          postgres    false    202    205    2803                       2606    16494    DOCUMENTOS fkid_documentos_d_p    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."DOCUMENTOS"
    ADD CONSTRAINT "fkid_documentos_d_p" FOREIGN KEY ("Id_detalle_proceso") REFERENCES "public"."DETALLE_PROCESO"("Id_detalle_proceso");
 N   ALTER TABLE ONLY "public"."DOCUMENTOS" DROP CONSTRAINT "fkid_documentos_d_p";
       public          postgres    false    2809    208    210                       2606    16489    DOCUMENTOS fkid_documentos_e    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."DOCUMENTOS"
    ADD CONSTRAINT "fkid_documentos_e" FOREIGN KEY ("Id_estudiante") REFERENCES "public"."ESTUDIANTES"("Id_cuenta");
 L   ALTER TABLE ONLY "public"."DOCUMENTOS" DROP CONSTRAINT "fkid_documentos_e";
       public          postgres    false    2803    210    205                       2606    16484    DETALLE_PROCESO fkid_formatod_p    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."DETALLE_PROCESO"
    ADD CONSTRAINT "fkid_formatod_p" FOREIGN KEY ("Id_formato") REFERENCES "public"."FORMATO"("Id_formato");
 O   ALTER TABLE ONLY "public"."DETALLE_PROCESO" DROP CONSTRAINT "fkid_formatod_p";
       public          postgres    false    208    209    2811                       2606    16479    DETALLE_PROCESO fkid_proceso_d    FK CONSTRAINT     �   ALTER TABLE ONLY "public"."DETALLE_PROCESO"
    ADD CONSTRAINT "fkid_proceso_d" FOREIGN KEY ("Id_proceso") REFERENCES "public"."PROCESO"("Id_proceso");
 N   ALTER TABLE ONLY "public"."DETALLE_PROCESO" DROP CONSTRAINT "fkid_proceso_d";
       public          postgres    false    208    207    2807            �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���         