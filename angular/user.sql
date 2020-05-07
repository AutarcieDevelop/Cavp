PGDMP     +    $            
    w            drawstagram_database    11.5    12.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16389    drawstagram_database    DATABASE     r   CREATE DATABASE drawstagram_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
 $   DROP DATABASE drawstagram_database;
                root    false            �            1259    16393    users    TABLE     �  CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(300) NOT NULL,
    email character varying(355) NOT NULL,
    created_on date DEFAULT CURRENT_TIMESTAMP,
    last_login date DEFAULT CURRENT_TIMESTAMP,
    last_name character varying(50) NOT NULL,
    first_name character varying(50) NOT NULL,
    conversation boolean
);
    DROP TABLE public.users;
       public            root    false            �            1259    16401    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          root    false    197            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          root    false    198                       2604    24667    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          root    false    198    197            �          0    16393    users 
   TABLE DATA           �   COPY public.users (user_id, username, password, email, created_on, last_login, last_name, first_name, conversation) FROM stdin;
    public          root    false    197   .       �           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);
          public          root    false    198                       2606    16407    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            root    false    197                       2606    16409    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            root    false    197                       2606    16411    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            root    false    197            �   b  x���=o1�g�WtȚ��'�yH��ЮY(��Ͼ�;����rAb�P�px���y����D�a�bL��P�T���U���gt�0F�HYs{�����q�a����X�|�p��Rޞ�a8�{�L�s3}e�im�
�J�H���Z��]��e�\:Hw�s%�"Ȏ4v�� ��^J��^��v�����)�(�,����j�H5&[k�zCjR
ʹ�͉�a�9<2��[���7��yd���^E�������3�3J͇Db����`�f|Y�|ܥ�ԇ�+`F%3ɸ]�{5䤴�>5��v�;��>i:�;j����������~|G"\����~	�� �e�;����k�
s����gh��^�z�9V�	K�5v��xS����G)�l��/�y)��$�]uQۚ�xO
/�٭��%U�F��埁��:�[����&���!7.i����{�~��С�6Sӝ�0�_О�<.���Z`ݽQ|�Na���垝�[�v3��^�Q��VJqޛ�I��� ^�W�� ǣ�畳���0.@����w ��
��Yh�K,�e�z��c��Q\�9~�	.{��������<�\=ܬV����,�     