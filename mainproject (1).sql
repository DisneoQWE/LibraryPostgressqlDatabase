PGDMP         1                 y            library    12.3    12.3 w    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    16395    library    DATABASE     ?   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE library;
                postgres    false                        2615    16396    Project    SCHEMA        CREATE SCHEMA "Project";
    DROP SCHEMA "Project";
                postgres    false            ?            1259    16757    delivery    TABLE     ?   CREATE TABLE "Project".delivery (
    reader_id integer NOT NULL,
    kartateka_id integer NOT NULL,
    date_deliver date,
    date_return date,
    id integer NOT NULL
);
    DROP TABLE "Project".delivery;
       Project         heap    postgres    false    8            x           0    0    TABLE delivery    COMMENT     7   COMMENT ON TABLE "Project".delivery IS 'Выдача';
          Project          postgres    false    215            y           0    0    COLUMN delivery.reader_id    COMMENT     M   COMMENT ON COLUMN "Project".delivery.reader_id IS 'Код читателя';
          Project          postgres    false    215            z           0    0    COLUMN delivery.kartateka_id    COMMENT     J   COMMENT ON COLUMN "Project".delivery.kartateka_id IS 'Код книги';
          Project          postgres    false    215            {           0    0    COLUMN delivery.date_deliver    COMMENT     N   COMMENT ON COLUMN "Project".delivery.date_deliver IS 'Дата выдачи';
          Project          postgres    false    215            |           0    0    COLUMN delivery.date_return    COMMENT     Q   COMMENT ON COLUMN "Project".delivery.date_return IS 'Дата возврата';
          Project          postgres    false    215            ?            1259    16912    deliver_id_seq    SEQUENCE     ?   CREATE SEQUENCE "Project".deliver_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE "Project".deliver_id_seq;
       Project          postgres    false    215    8            }           0    0    deliver_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE "Project".deliver_id_seq OWNED BY "Project".delivery.id;
          Project          postgres    false    220            ?            1259    16739    fine    TABLE     ?   CREATE TABLE "Project".fine (
    id integer NOT NULL,
    id_reader_bilet integer,
    penalty integer,
    money_return integer,
    date_order date
);
    DROP TABLE "Project".fine;
       Project         heap    postgres    false    8            ~           0    0 
   TABLE fine    COMMENT     1   COMMENT ON TABLE "Project".fine IS 'Штраф';
          Project          postgres    false    214                       0    0    COLUMN fine.id_reader_bilet    COMMENT     K   COMMENT ON COLUMN "Project".fine.id_reader_bilet IS 'Код билета';
          Project          postgres    false    214            ?           0    0    COLUMN fine.date_order    COMMENT     H   COMMENT ON COLUMN "Project".fine.date_order IS 'Дата выдачи';
          Project          postgres    false    214            ?            1259    16737    fine_id_seq    SEQUENCE     ?   CREATE SEQUENCE "Project".fine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE "Project".fine_id_seq;
       Project          postgres    false    8    214            ?           0    0    fine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE "Project".fine_id_seq OWNED BY "Project".fine.id;
          Project          postgres    false    213            ?            1259    16576    information    TABLE     ?   CREATE TABLE "Project".information (
    genre character varying,
    book character varying,
    comics character varying,
    author character varying,
    izdatelstvo character varying,
    id integer NOT NULL
);
 "   DROP TABLE "Project".information;
       Project         heap    postgres    false    8            ?           0    0    TABLE information    COMMENT     R   COMMENT ON TABLE "Project".information IS 'Книга, комиксы и.т.д.';
          Project          postgres    false    209            ?           0    0    COLUMN information.genre    COMMENT     =   COMMENT ON COLUMN "Project".information.genre IS 'Жанр';
          Project          postgres    false    209            ?           0    0    COLUMN information.book    COMMENT     >   COMMENT ON COLUMN "Project".information.book IS 'Книга';
          Project          postgres    false    209            ?           0    0    COLUMN information.comics    COMMENT     B   COMMENT ON COLUMN "Project".information.comics IS 'Комикс';
          Project          postgres    false    209            ?           0    0    COLUMN information.author    COMMENT     @   COMMENT ON COLUMN "Project".information.author IS 'Автор';
          Project          postgres    false    209            ?           0    0    COLUMN information.izdatelstvo    COMMENT     S   COMMENT ON COLUMN "Project".information.izdatelstvo IS 'Издательство';
          Project          postgres    false    209            ?           0    0    COLUMN information.id    COMMENT     C   COMMENT ON COLUMN "Project".information.id IS 'Код книги';
          Project          postgres    false    209            ?            1259    16762    information_id_seq    SEQUENCE     ?   CREATE SEQUENCE "Project".information_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE "Project".information_id_seq;
       Project          postgres    false    8    209            ?           0    0    information_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE "Project".information_id_seq OWNED BY "Project".information.id;
          Project          postgres    false    216            ?            1259    16816 	   kartoteka    TABLE     ?   CREATE TABLE "Project".kartoteka (
    number_info integer NOT NULL,
    punkt_vidachi character varying NOT NULL,
    book_id integer NOT NULL,
    id integer NOT NULL,
    date_delivery date,
    kniga_status character varying
);
     DROP TABLE "Project".kartoteka;
       Project         heap    postgres    false    8            ?           0    0    TABLE kartoteka    COMMENT     A   COMMENT ON TABLE "Project".kartoteka IS 'Список книг';
          Project          postgres    false    217            ?           0    0    COLUMN kartoteka.number_info    COMMENT     V   COMMENT ON COLUMN "Project".kartoteka.number_info IS 'Количество книг';
          Project          postgres    false    217            ?           0    0    COLUMN kartoteka.punkt_vidachi    COMMENT     R   COMMENT ON COLUMN "Project".kartoteka.punkt_vidachi IS 'Пункт выдачи';
          Project          postgres    false    217            ?           0    0    COLUMN kartoteka.book_id    COMMENT     O   COMMENT ON COLUMN "Project".kartoteka.book_id IS 'Код книги и.тд.';
          Project          postgres    false    217            ?           0    0    COLUMN kartoteka.id    COMMENT     U   COMMENT ON COLUMN "Project".kartoteka.id IS 'Код книг в картотеке';
          Project          postgres    false    217            ?           0    0    COLUMN kartoteka.date_delivery    COMMENT     Z   COMMENT ON COLUMN "Project".kartoteka.date_delivery IS 'Дата поступления';
          Project          postgres    false    217            ?            1259    16824    kartoteka_id_seq    SEQUENCE     ?   CREATE SEQUENCE "Project".kartoteka_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "Project".kartoteka_id_seq;
       Project          postgres    false    217    8            ?           0    0    kartoteka_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "Project".kartoteka_id_seq OWNED BY "Project".kartoteka.id;
          Project          postgres    false    218            ?            1259    16703    kategori_reader    TABLE     r   CREATE TABLE "Project".kategori_reader (
    kategori character varying NOT NULL,
    dostup character varying
);
 &   DROP TABLE "Project".kategori_reader;
       Project         heap    postgres    false    8            ?           0    0    TABLE kategori_reader    COMMENT     W   COMMENT ON TABLE "Project".kategori_reader IS 'Категории читателей';
          Project          postgres    false    212            ?           0    0    COLUMN kategori_reader.kategori    COMMENT     N   COMMENT ON COLUMN "Project".kategori_reader.kategori IS 'Категории';
          Project          postgres    false    212            ?           0    0    COLUMN kategori_reader.dostup    COMMENT     W   COMMENT ON COLUMN "Project".kategori_reader.dostup IS 'Уровень доступа';
          Project          postgres    false    212            ?            1259    16564    order    TABLE     ?   CREATE TABLE "Project"."order" (
    id integer NOT NULL,
    book_number integer NOT NULL,
    reader_id integer NOT NULL,
    date_order date,
    number_to_take integer
);
    DROP TABLE "Project"."order";
       Project         heap    postgres    false    8            ?           0    0    TABLE "order"    COMMENT     4   COMMENT ON TABLE "Project"."order" IS 'Заказ';
          Project          postgres    false    207            ?           0    0    COLUMN "order".id    COMMENT     A   COMMENT ON COLUMN "Project"."order".id IS 'Код заказа';
          Project          postgres    false    207            ?           0    0    COLUMN "order".book_number    COMMENT     H   COMMENT ON COLUMN "Project"."order".book_number IS 'Код книги';
          Project          postgres    false    207            ?           0    0    COLUMN "order".reader_id    COMMENT     L   COMMENT ON COLUMN "Project"."order".reader_id IS 'Код читателя';
          Project          postgres    false    207            ?           0    0    COLUMN "order".number_to_take    COMMENT     b   COMMENT ON COLUMN "Project"."order".number_to_take IS 'Кол-во книг для заказа';
          Project          postgres    false    207            ?            1259    16567    order_id_seq    SEQUENCE     ?   CREATE SEQUENCE "Project".order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE "Project".order_id_seq;
       Project          postgres    false    8    207            ?           0    0    order_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "Project".order_id_seq OWNED BY "Project"."order".id;
          Project          postgres    false    208            ?            1259    16872    punkt_vidachi    TABLE     W   CREATE TABLE "Project".punkt_vidachi (
    punkt_vidachi character varying NOT NULL
);
 $   DROP TABLE "Project".punkt_vidachi;
       Project         heap    postgres    false    8            ?           0    0    TABLE punkt_vidachi    COMMENT     G   COMMENT ON TABLE "Project".punkt_vidachi IS 'Пункт выдачи';
          Project          postgres    false    219            ?           0    0 "   COLUMN punkt_vidachi.punkt_vidachi    COMMENT     X   COMMENT ON COLUMN "Project".punkt_vidachi.punkt_vidachi IS 'Пункты выдачи';
          Project          postgres    false    219            ?            1259    16674    reader    TABLE     ?  CREATE TABLE "Project".reader (
    id integer NOT NULL,
    fisrtname character varying NOT NULL,
    surname character varying NOT NULL,
    group_number integer,
    faculty_name character varying,
    kafedra_name character varying,
    stepen character varying,
    degree character varying,
    kategori_reader character varying NOT NULL,
    course_number character varying
);
    DROP TABLE "Project".reader;
       Project         heap    postgres    false    8            ?           0    0    TABLE reader    COMMENT     9   COMMENT ON TABLE "Project".reader IS 'Читатель';
          Project          postgres    false    211            ?           0    0    COLUMN reader.id    COMMENT     D   COMMENT ON COLUMN "Project".reader.id IS 'Код читателя';
          Project          postgres    false    211            ?           0    0    COLUMN reader.fisrtname    COMMENT     :   COMMENT ON COLUMN "Project".reader.fisrtname IS 'Имя';
          Project          postgres    false    211            ?           0    0    COLUMN reader.surname    COMMENT     @   COMMENT ON COLUMN "Project".reader.surname IS 'Фамилия';
          Project          postgres    false    211            ?           0    0    COLUMN reader.group_number    COMMENT     N   COMMENT ON COLUMN "Project".reader.group_number IS 'Номер группы';
          Project          postgres    false    211            ?           0    0    COLUMN reader.faculty_name    COMMENT     R   COMMENT ON COLUMN "Project".reader.faculty_name IS 'Имя факультета';
          Project          postgres    false    211            ?           0    0    COLUMN reader.kafedra_name    COMMENT     E   COMMENT ON COLUMN "Project".reader.kafedra_name IS 'Кафедра';
          Project          postgres    false    211            ?           0    0    COLUMN reader.stepen    COMMENT     ?   COMMENT ON COLUMN "Project".reader.stepen IS 'Степень';
          Project          postgres    false    211            ?           0    0    COLUMN reader.degree    COMMENT     =   COMMENT ON COLUMN "Project".reader.degree IS 'Звание';
          Project          postgres    false    211            ?           0    0    COLUMN reader.course_number    COMMENT     M   COMMENT ON COLUMN "Project".reader.course_number IS 'Номер курса';
          Project          postgres    false    211            ?            1259    16514    reader_bilet    TABLE     ?   CREATE TABLE "Project".reader_bilet (
    id integer NOT NULL,
    date_book date,
    status character varying,
    reader_ticket character varying NOT NULL,
    registration_again_date date
);
 #   DROP TABLE "Project".reader_bilet;
       Project         heap    postgres    false    8            ?           0    0    TABLE reader_bilet    COMMENT     R   COMMENT ON TABLE "Project".reader_bilet IS 'Читательский билет';
          Project          postgres    false    206            ?           0    0    COLUMN reader_bilet.date_book    COMMENT     O   COMMENT ON COLUMN "Project".reader_bilet.date_book IS 'Дата записи';
          Project          postgres    false    206            ?           0    0    COLUMN reader_bilet.status    COMMENT     C   COMMENT ON COLUMN "Project".reader_bilet.status IS 'Статус';
          Project          postgres    false    206            ?           0    0 !   COLUMN reader_bilet.reader_ticket    COMMENT     p   COMMENT ON COLUMN "Project".reader_bilet.reader_ticket IS 'Имеется ли у читателя билет';
          Project          postgres    false    206            ?           0    0 +   COLUMN reader_bilet.registration_again_date    COMMENT     f   COMMENT ON COLUMN "Project".reader_bilet.registration_again_date IS 'Перерегистрация';
          Project          postgres    false    206            ?            1259    16672    reader_id_seq    SEQUENCE     ?   CREATE SEQUENCE "Project".reader_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE "Project".reader_id_seq;
       Project          postgres    false    211    8            ?           0    0    reader_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "Project".reader_id_seq OWNED BY "Project".reader.id;
          Project          postgres    false    210            ?            1259    16411    exams    TABLE     B   CREATE TABLE public.exams (
    id integer,
    firstname text
);
    DROP TABLE public.exams;
       public         heap    postgres    false            ?            1259    16406    readingrooms    TABLE     >   CREATE TABLE public.readingrooms (
    id integer NOT NULL
);
     DROP TABLE public.readingrooms;
       public         heap    postgres    false            ?            1259    16498    urok    TABLE     A   CREATE TABLE public.urok (
    id integer,
    firstname text
);
    DROP TABLE public.urok;
       public         heap    postgres    false            ?
           2604    16914    delivery id    DEFAULT     o   ALTER TABLE ONLY "Project".delivery ALTER COLUMN id SET DEFAULT nextval('"Project".deliver_id_seq'::regclass);
 =   ALTER TABLE "Project".delivery ALTER COLUMN id DROP DEFAULT;
       Project          postgres    false    220    215            ?
           2604    16742    fine id    DEFAULT     h   ALTER TABLE ONLY "Project".fine ALTER COLUMN id SET DEFAULT nextval('"Project".fine_id_seq'::regclass);
 9   ALTER TABLE "Project".fine ALTER COLUMN id DROP DEFAULT;
       Project          postgres    false    214    213    214            ?
           2604    16764    information id    DEFAULT     v   ALTER TABLE ONLY "Project".information ALTER COLUMN id SET DEFAULT nextval('"Project".information_id_seq'::regclass);
 @   ALTER TABLE "Project".information ALTER COLUMN id DROP DEFAULT;
       Project          postgres    false    216    209            ?
           2604    16826    kartoteka id    DEFAULT     r   ALTER TABLE ONLY "Project".kartoteka ALTER COLUMN id SET DEFAULT nextval('"Project".kartoteka_id_seq'::regclass);
 >   ALTER TABLE "Project".kartoteka ALTER COLUMN id DROP DEFAULT;
       Project          postgres    false    218    217            ?
           2604    16569    order id    DEFAULT     l   ALTER TABLE ONLY "Project"."order" ALTER COLUMN id SET DEFAULT nextval('"Project".order_id_seq'::regclass);
 <   ALTER TABLE "Project"."order" ALTER COLUMN id DROP DEFAULT;
       Project          postgres    false    208    207            ?
           2604    16857 	   reader id    DEFAULT     l   ALTER TABLE ONLY "Project".reader ALTER COLUMN id SET DEFAULT nextval('"Project".reader_id_seq'::regclass);
 ;   ALTER TABLE "Project".reader ALTER COLUMN id DROP DEFAULT;
       Project          postgres    false    210    211    211            l          0    16757    delivery 
   TABLE DATA           ]   COPY "Project".delivery (reader_id, kartateka_id, date_deliver, date_return, id) FROM stdin;
    Project          postgres    false    215   wz       k          0    16739    fine 
   TABLE DATA           Y   COPY "Project".fine (id, id_reader_bilet, penalty, money_return, date_order) FROM stdin;
    Project          postgres    false    214   ?z       f          0    16576    information 
   TABLE DATA           V   COPY "Project".information (genre, book, comics, author, izdatelstvo, id) FROM stdin;
    Project          postgres    false    209   <{       n          0    16816 	   kartoteka 
   TABLE DATA           l   COPY "Project".kartoteka (number_info, punkt_vidachi, book_id, id, date_delivery, kniga_status) FROM stdin;
    Project          postgres    false    217   ?|       i          0    16703    kategori_reader 
   TABLE DATA           >   COPY "Project".kategori_reader (kategori, dostup) FROM stdin;
    Project          postgres    false    212   ?}       d          0    16564    order 
   TABLE DATA           \   COPY "Project"."order" (id, book_number, reader_id, date_order, number_to_take) FROM stdin;
    Project          postgres    false    207   ~       p          0    16872    punkt_vidachi 
   TABLE DATA           9   COPY "Project".punkt_vidachi (punkt_vidachi) FROM stdin;
    Project          postgres    false    219   ?~       h          0    16674    reader 
   TABLE DATA           ?   COPY "Project".reader (id, fisrtname, surname, group_number, faculty_name, kafedra_name, stepen, degree, kategori_reader, course_number) FROM stdin;
    Project          postgres    false    211   *       c          0    16514    reader_bilet 
   TABLE DATA           h   COPY "Project".reader_bilet (id, date_book, status, reader_ticket, registration_again_date) FROM stdin;
    Project          postgres    false    206   ??       a          0    16411    exams 
   TABLE DATA           .   COPY public.exams (id, firstname) FROM stdin;
    public          postgres    false    204   Z?       `          0    16406    readingrooms 
   TABLE DATA           *   COPY public.readingrooms (id) FROM stdin;
    public          postgres    false    203   w?       b          0    16498    urok 
   TABLE DATA           -   COPY public.urok (id, firstname) FROM stdin;
    public          postgres    false    205   ??       ?           0    0    deliver_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"Project".deliver_id_seq', 8, true);
          Project          postgres    false    220            ?           0    0    fine_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('"Project".fine_id_seq', 3, true);
          Project          postgres    false    213            ?           0    0    information_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Project".information_id_seq', 10, true);
          Project          postgres    false    216            ?           0    0    kartoteka_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Project".kartoteka_id_seq', 24, true);
          Project          postgres    false    218            ?           0    0    order_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"Project".order_id_seq', 25, true);
          Project          postgres    false    208            ?           0    0    reader_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"Project".reader_id_seq', 9, true);
          Project          postgres    false    210            ?
           2606    16919    delivery deliver_pk 
   CONSTRAINT     T   ALTER TABLE ONLY "Project".delivery
    ADD CONSTRAINT deliver_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY "Project".delivery DROP CONSTRAINT deliver_pk;
       Project            postgres    false    215            ?
           2606    16744    fine fine_pk 
   CONSTRAINT     M   ALTER TABLE ONLY "Project".fine
    ADD CONSTRAINT fine_pk PRIMARY KEY (id);
 9   ALTER TABLE ONLY "Project".fine DROP CONSTRAINT fine_pk;
       Project            postgres    false    214            ?
           2606    16772    information information_pk 
   CONSTRAINT     [   ALTER TABLE ONLY "Project".information
    ADD CONSTRAINT information_pk PRIMARY KEY (id);
 G   ALTER TABLE ONLY "Project".information DROP CONSTRAINT information_pk;
       Project            postgres    false    209            ?
           2606    16881    kartoteka kartoteka_pk 
   CONSTRAINT     W   ALTER TABLE ONLY "Project".kartoteka
    ADD CONSTRAINT kartoteka_pk PRIMARY KEY (id);
 C   ALTER TABLE ONLY "Project".kartoteka DROP CONSTRAINT kartoteka_pk;
       Project            postgres    false    217            ?
           2606    16710 "   kategori_reader kategori_reader_pk 
   CONSTRAINT     i   ALTER TABLE ONLY "Project".kategori_reader
    ADD CONSTRAINT kategori_reader_pk PRIMARY KEY (kategori);
 O   ALTER TABLE ONLY "Project".kategori_reader DROP CONSTRAINT kategori_reader_pk;
       Project            postgres    false    212            ?
           2606    16774    order order_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY "Project"."order"
    ADD CONSTRAINT order_pk PRIMARY KEY (id);
 =   ALTER TABLE ONLY "Project"."order" DROP CONSTRAINT order_pk;
       Project            postgres    false    207            ?
           2606    16879    punkt_vidachi punkt_vidachi_pk 
   CONSTRAINT     j   ALTER TABLE ONLY "Project".punkt_vidachi
    ADD CONSTRAINT punkt_vidachi_pk PRIMARY KEY (punkt_vidachi);
 K   ALTER TABLE ONLY "Project".punkt_vidachi DROP CONSTRAINT punkt_vidachi_pk;
       Project            postgres    false    219            ?
           2606    16522    reader_bilet reader_bilet_pk 
   CONSTRAINT     ]   ALTER TABLE ONLY "Project".reader_bilet
    ADD CONSTRAINT reader_bilet_pk PRIMARY KEY (id);
 I   ALTER TABLE ONLY "Project".reader_bilet DROP CONSTRAINT reader_bilet_pk;
       Project            postgres    false    206            ?
           2606    16859    reader reader_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY "Project".reader
    ADD CONSTRAINT reader_pk PRIMARY KEY (id);
 =   ALTER TABLE ONLY "Project".reader DROP CONSTRAINT reader_pk;
       Project            postgres    false    211            ?
           2606    16410    readingrooms readingrooms_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.readingrooms
    ADD CONSTRAINT readingrooms_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.readingrooms DROP CONSTRAINT readingrooms_pkey;
       public            postgres    false    203            ?
           2606    16925    delivery deliver1_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Project".delivery
    ADD CONSTRAINT deliver1_fk FOREIGN KEY (reader_id) REFERENCES "Project".reader_bilet(id);
 A   ALTER TABLE ONLY "Project".delivery DROP CONSTRAINT deliver1_fk;
       Project          postgres    false    2759    206    215            ?
           2606    16920    delivery deliver_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Project".delivery
    ADD CONSTRAINT deliver_fk FOREIGN KEY (kartateka_id) REFERENCES "Project".kartoteka(id);
 @   ALTER TABLE ONLY "Project".delivery DROP CONSTRAINT deliver_fk;
       Project          postgres    false    217    215    2773            ?
           2606    16745    fine fine_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Project".fine
    ADD CONSTRAINT fine_fk FOREIGN KEY (id_reader_bilet) REFERENCES "Project".reader_bilet(id);
 9   ALTER TABLE ONLY "Project".fine DROP CONSTRAINT fine_fk;
       Project          postgres    false    214    2759    206            ?
           2606    16887    kartoteka kartoteka1_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Project".kartoteka
    ADD CONSTRAINT kartoteka1_fk FOREIGN KEY (punkt_vidachi) REFERENCES "Project".punkt_vidachi(punkt_vidachi);
 D   ALTER TABLE ONLY "Project".kartoteka DROP CONSTRAINT kartoteka1_fk;
       Project          postgres    false    219    2775    217            ?
           2606    16882    kartoteka kartoteka_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Project".kartoteka
    ADD CONSTRAINT kartoteka_fk FOREIGN KEY (book_id) REFERENCES "Project".information(id);
 C   ALTER TABLE ONLY "Project".kartoteka DROP CONSTRAINT kartoteka_fk;
       Project          postgres    false    2763    209    217            ?
           2606    16852    order order1_fk    FK CONSTRAINT        ALTER TABLE ONLY "Project"."order"
    ADD CONSTRAINT order1_fk FOREIGN KEY (reader_id) REFERENCES "Project".reader_bilet(id);
 >   ALTER TABLE ONLY "Project"."order" DROP CONSTRAINT order1_fk;
       Project          postgres    false    2759    206    207            ?
           2606    16775    order order_fk    FK CONSTRAINT        ALTER TABLE ONLY "Project"."order"
    ADD CONSTRAINT order_fk FOREIGN KEY (book_number) REFERENCES "Project".information(id);
 =   ALTER TABLE ONLY "Project"."order" DROP CONSTRAINT order_fk;
       Project          postgres    false    207    2763    209            ?
           2606    16860    reader_bilet reader_bilet_fk    FK CONSTRAINT     }   ALTER TABLE ONLY "Project".reader_bilet
    ADD CONSTRAINT reader_bilet_fk FOREIGN KEY (id) REFERENCES "Project".reader(id);
 I   ALTER TABLE ONLY "Project".reader_bilet DROP CONSTRAINT reader_bilet_fk;
       Project          postgres    false    2765    211    206            ?
           2606    16727    reader reader_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Project".reader
    ADD CONSTRAINT reader_fk FOREIGN KEY (kategori_reader) REFERENCES "Project".kategori_reader(kategori);
 =   ALTER TABLE ONLY "Project".reader DROP CONSTRAINT reader_fk;
       Project          postgres    false    2767    211    212            ?
           2606    16414    exams exams_id_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.exams
    ADD CONSTRAINT exams_id_fkey FOREIGN KEY (id) REFERENCES public.readingrooms(id);
 =   ALTER TABLE ONLY public.exams DROP CONSTRAINT exams_id_fkey;
       public          postgres    false    204    2757    203            l   v   x?U?K!C??.N[?????~?z?*(*?5'jRsd?t$???B]c?S??F??D???S?5???̱??<?N^????ymj?J?=???g????? ???????? ?5*?      k   /   x???  ?7???v????=/?1(	?g9+M?(??襚g????`      f   ?  x?eR?N?P]?~???(*?u?F??1,?H\SYh
(+?Ɲ??bi?????-.?ir{g??9g#?\???3F??+않^??Ë4?%?H??]0H?	?B??\????ZBd??"???,I"?6?E??J?U?d"????Q?~Y=????ӓ??e0"??m牌?2q??A?~fk?F?/?h0f?߈=?+?t??? ??-??????9ض????v???֟9y,[:rg)9??N	??\?b6#t?i?ww?G5i??$??#%	_#?^?0??b?e T??
??l#?h"?t$?]?a|>P?y#O3??xʱK?(?4???8?B?+`f?@??,$?g???_|??P?B|}?[????J3˱?%Y??TG?R2?+?n?6Ly??>???      n   ?   x?????0???,??????0?$?%m@B??d?獸t?Ų\?߻??g???Р??????=?>?0??Ğl?u?6cG?cYo?S?a6>'?xb?,?WT????gZ???x????yBe?PE\??%?RE?rT?T??pA^?m???R???[*݃?>?L^u??O???(J?T?V뙫?A͉??q?O??2N??"?Sw?c~E??~      i   N   x?.)MI?+?t???
IML?H-??2KJ?2AR~?\!E??y?? ?[?7?r,.?,J?jt,.?,.???b???? ???      d   ?   x?e?A?0??_ڱ?/??;*?C?崁?KHK?x%^?l?]??-|?rc#?̍!|7??2|?RX?aJy9?4???/S?8??[et?K??4HG?8??gH??HIē??%z??S?dY9D˪?$F?-??!{????'=??V??f??v???G????$U?      p   J   x??0????.콰?[/????ua???.l ??v_???xaPz??6\ح`HP?A?\1z\\\ ?Q?      h   s  x??R?J?@]O??/Ӈ?K7n-?e7UfS$M?}?s?R*?JAt%??ZM??3乓??BK&??;??{S?c?P7???E??dኾ3???5?sK0o???~???1?<F䊈l??u3?k??t?n??[9:q}f?6z?^?|?.????K2^?w??'???F*??$??>??????@??PO?:E?ܡ?bR?7xɯxU?lA?N???Lq_???E?	B?6??H\?D?j^-?k?(<??m?bq??[P??N????m?]r?ca?Z?BW7t3-o?mDݜ?>???h%?????m??⁼ ?:8??(򩒖nː?˼)C+?v???$???8??
??e?:?s??????u˲> ~?u       c   ?   x????!?ϼ^0<T??
hF????1?'???d7c?x????ɰ?J+??ԝ?ϴ?B??!pDL?,ŴG(??? uڴҖ????W\~??lF?Ie??XN3??#o??)??.????ǕElc??Īj]??\?9o??e?/????3      a      x?????? ? ?      `      x?????? ? ?      b      x?????? ? ?     