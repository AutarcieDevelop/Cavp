PGDMP                         x           cavp_database    12.0    12.0 %    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    50293    cavp_database    DATABASE     �   CREATE DATABASE cavp_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_Belgium.1252' LC_CTYPE = 'French_Belgium.1252';
    DROP DATABASE cavp_database;
                sasa    false                        1247    50303    groupestypes    TYPE     J   CREATE TYPE public.groupestypes AS ENUM (
    '1',
    '2',
    'TOUS'
);
    DROP TYPE public.groupestypes;
       public          sasa    false            �            1259    50368    cours    TABLE     y   CREATE TABLE public.cours (
    numcours integer NOT NULL,
    matprof integer,
    heures_total text,
    ue integer
);
    DROP TABLE public.cours;
       public         heap    sasa    false            �            1259    50386    cours_semaine    TABLE     T   CREATE TABLE public.cours_semaine (
    coursnum integer,
    semainenum integer
);
 !   DROP TABLE public.cours_semaine;
       public         heap    sasa    false            �            1259    50320    jours    TABLE     \   CREATE TABLE public.jours (
    nomjour character varying NOT NULL,
    seancesf integer
);
    DROP TABLE public.jours;
       public         heap    sasa    false            �            1259    50335    prof    TABLE     Y   CREATE TABLE public.prof (
    nummat integer NOT NULL,
    nomprof character varying
);
    DROP TABLE public.prof;
       public         heap    sasa    false            �            1259    50333    prof_nummat_seq    SEQUENCE     �   CREATE SEQUENCE public.prof_nummat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.prof_nummat_seq;
       public          sasa    false    206            @           0    0    prof_nummat_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.prof_nummat_seq OWNED BY public.prof.nummat;
          public          sasa    false    205            �            1259    50311    seance    TABLE     �   CREATE TABLE public.seance (
    idseance integer NOT NULL,
    heure_debut text,
    heure_fin text,
    local character varying,
    groupe public.groupestypes
);
    DROP TABLE public.seance;
       public         heap    sasa    false    544            �            1259    50309    seance_idseance_seq    SEQUENCE     �   CREATE SEQUENCE public.seance_idseance_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.seance_idseance_seq;
       public          sasa    false    203            A           0    0    seance_idseance_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.seance_idseance_seq OWNED BY public.seance.idseance;
          public          sasa    false    202            �            1259    50381    semaine    TABLE     A   CREATE TABLE public.semaine (
    numsemaine integer NOT NULL
);
    DROP TABLE public.semaine;
       public         heap    sasa    false            �            1259    50399    ue    TABLE     Q   CREATE TABLE public.ue (
    idue integer NOT NULL,
    nom character varying
);
    DROP TABLE public.ue;
       public         heap    sasa    false            �
           2604    50338    prof nummat    DEFAULT     j   ALTER TABLE ONLY public.prof ALTER COLUMN nummat SET DEFAULT nextval('public.prof_nummat_seq'::regclass);
 :   ALTER TABLE public.prof ALTER COLUMN nummat DROP DEFAULT;
       public          sasa    false    205    206    206            �
           2604    50314    seance idseance    DEFAULT     r   ALTER TABLE ONLY public.seance ALTER COLUMN idseance SET DEFAULT nextval('public.seance_idseance_seq'::regclass);
 >   ALTER TABLE public.seance ALTER COLUMN idseance DROP DEFAULT;
       public          sasa    false    202    203    203            6          0    50368    cours 
   TABLE DATA           D   COPY public.cours (numcours, matprof, heures_total, ue) FROM stdin;
    public          sasa    false    207   v%       8          0    50386    cours_semaine 
   TABLE DATA           =   COPY public.cours_semaine (coursnum, semainenum) FROM stdin;
    public          sasa    false    209   �%       3          0    50320    jours 
   TABLE DATA           2   COPY public.jours (nomjour, seancesf) FROM stdin;
    public          sasa    false    204   �%       5          0    50335    prof 
   TABLE DATA           /   COPY public.prof (nummat, nomprof) FROM stdin;
    public          sasa    false    206   �%       2          0    50311    seance 
   TABLE DATA           Q   COPY public.seance (idseance, heure_debut, heure_fin, local, groupe) FROM stdin;
    public          sasa    false    203   �%       7          0    50381    semaine 
   TABLE DATA           -   COPY public.semaine (numsemaine) FROM stdin;
    public          sasa    false    208   &       9          0    50399    ue 
   TABLE DATA           '   COPY public.ue (idue, nom) FROM stdin;
    public          sasa    false    210   $&       B           0    0    prof_nummat_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.prof_nummat_seq', 1, false);
          public          sasa    false    205            C           0    0    seance_idseance_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.seance_idseance_seq', 1, false);
          public          sasa    false    202            �
           2606    50375    cours cours_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT cours_pkey PRIMARY KEY (numcours);
 :   ALTER TABLE ONLY public.cours DROP CONSTRAINT cours_pkey;
       public            sasa    false    207            �
           2606    50327    jours jours_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.jours
    ADD CONSTRAINT jours_pkey PRIMARY KEY (nomjour);
 :   ALTER TABLE ONLY public.jours DROP CONSTRAINT jours_pkey;
       public            sasa    false    204            �
           2606    50343    prof prof_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prof
    ADD CONSTRAINT prof_pkey PRIMARY KEY (nummat);
 8   ALTER TABLE ONLY public.prof DROP CONSTRAINT prof_pkey;
       public            sasa    false    206            �
           2606    50319    seance seance_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.seance
    ADD CONSTRAINT seance_pkey PRIMARY KEY (idseance);
 <   ALTER TABLE ONLY public.seance DROP CONSTRAINT seance_pkey;
       public            sasa    false    203            �
           2606    50385    semaine semaine_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.semaine
    ADD CONSTRAINT semaine_pkey PRIMARY KEY (numsemaine);
 >   ALTER TABLE ONLY public.semaine DROP CONSTRAINT semaine_pkey;
       public            sasa    false    208            �
           2606    50406 
   ue ue_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ue
    ADD CONSTRAINT ue_pkey PRIMARY KEY (idue);
 4   ALTER TABLE ONLY public.ue DROP CONSTRAINT ue_pkey;
       public            sasa    false    210            �
           2606    50376    cours fkey_cours_prof    FK CONSTRAINT     w   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT fkey_cours_prof FOREIGN KEY (matprof) REFERENCES public.prof(nummat);
 ?   ALTER TABLE ONLY public.cours DROP CONSTRAINT fkey_cours_prof;
       public          sasa    false    207    2728    206            �
           2606    50389 !   cours_semaine fkey_courssem_cours    FK CONSTRAINT     �   ALTER TABLE ONLY public.cours_semaine
    ADD CONSTRAINT fkey_courssem_cours FOREIGN KEY (coursnum) REFERENCES public.cours(numcours);
 K   ALTER TABLE ONLY public.cours_semaine DROP CONSTRAINT fkey_courssem_cours;
       public          sasa    false    2730    209    207            �
           2606    50394    cours_semaine fkey_courssem_sem    FK CONSTRAINT     �   ALTER TABLE ONLY public.cours_semaine
    ADD CONSTRAINT fkey_courssem_sem FOREIGN KEY (semainenum) REFERENCES public.semaine(numsemaine);
 I   ALTER TABLE ONLY public.cours_semaine DROP CONSTRAINT fkey_courssem_sem;
       public          sasa    false    208    2732    209            �
           2606    50328    jours fkey_jour_seances    FK CONSTRAINT     ~   ALTER TABLE ONLY public.jours
    ADD CONSTRAINT fkey_jour_seances FOREIGN KEY (seancesf) REFERENCES public.seance(idseance);
 A   ALTER TABLE ONLY public.jours DROP CONSTRAINT fkey_jour_seances;
       public          sasa    false    203    204    2724            6      x������ � �      8      x������ � �      3      x������ � �      5      x������ � �      2      x������ � �      7      x������ � �      9      x������ � �     