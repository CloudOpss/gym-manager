PGDMP                 
        x         
   gymmanager    12.3    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393 
   gymmanager    DATABASE     �   CREATE DATABASE gymmanager WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE gymmanager;
                postgres    false            �            1259    16396    instructors    TABLE     �   CREATE TABLE public.instructors (
    id integer NOT NULL,
    name text,
    avatar_url text,
    gender text,
    services text,
    birth timestamp without time zone,
    created_at timestamp without time zone
);
    DROP TABLE public.instructors;
       public         heap    postgres    false            �            1259    16394    instructors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.instructors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.instructors_id_seq;
       public          postgres    false    203                       0    0    instructors_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.instructors_id_seq OWNED BY public.instructors.id;
          public          postgres    false    202            �            1259    16470    members    TABLE     �   CREATE TABLE public.members (
    id integer NOT NULL,
    name text,
    avatar_url text,
    email text,
    gender text,
    birth timestamp without time zone,
    blood text,
    weight integer,
    height integer,
    instructor_id integer
);
    DROP TABLE public.members;
       public         heap    postgres    false            �            1259    16468    members_id_seq    SEQUENCE     �   CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.members_id_seq;
       public          postgres    false    205                       0    0    members_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;
          public          postgres    false    204            �
           2604    16399    instructors id    DEFAULT     p   ALTER TABLE ONLY public.instructors ALTER COLUMN id SET DEFAULT nextval('public.instructors_id_seq'::regclass);
 =   ALTER TABLE public.instructors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    16473 
   members id    DEFAULT     h   ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);
 9   ALTER TABLE public.members ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                      0    16396    instructors 
   TABLE DATA           `   COPY public.instructors (id, name, avatar_url, gender, services, birth, created_at) FROM stdin;
    public          postgres    false    203   >                 0    16470    members 
   TABLE DATA           s   COPY public.members (id, name, avatar_url, email, gender, birth, blood, weight, height, instructor_id) FROM stdin;
    public          postgres    false    205   �                  0    0    instructors_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.instructors_id_seq', 12, true);
          public          postgres    false    202                       0    0    members_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.members_id_seq', 9, true);
          public          postgres    false    204            �
           2606    16401    instructors instructors_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.instructors DROP CONSTRAINT instructors_pkey;
       public            postgres    false    203            �
           2606    16475    members members_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public            postgres    false    205               �  x��Կn�0���y
O�.���8�+E��J'Tu`aq����Cl��yx��ց��p�p���壟�%��������gw�^�I}�.;7��yk��<Xo3�I%��U�Y������H�=3��4��d$�9I��t���ڷ/z��ڼ߾�ݼ�d���uo�I��7�n;�_�C���6�R��y�3j�7��aTw��YD�d�(�8D�B��,��M0㠗I��(�E��+pV�E&x���m�)eǚ���ŏ�%��F�#.v���*�F�K�s��ڇ�+D)��i�p�:�+Y��mM�[�]X�m����M=Uǳ�z(�@����=H�H���ىHL��'!� 1�2VN�)-��9b�um����M�\��#�_8�)��y�$? };k         H  x����j�0 г�=���rb�.��]7Ơ�n�]�M��mg�Cӿ_��=v)H!���;e�dVi�
�n��R[�}�5�� �U��YLD�H��1�c�A��1Ci�i��� |3�<�ǧ"{�o���<���E.}�;�nl[)�o�K��6�!�Q����l�|�[])S�V�%)&�2=���)=@U]��XFbʱ� <�"�Y�o��웟��� g<����8ϼ��k]w��-m�sCߔA�T�?��l�t�N��.���$�����?�z���!&"�5[��O�����!�+q�+q�W�`�{�y�BY
     