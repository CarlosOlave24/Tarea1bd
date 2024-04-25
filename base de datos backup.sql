PGDMP      9                |            Tarea1bd    16.2    16.2 *               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16398    Tarea1bd    DATABASE     }   CREATE DATABASE "Tarea1bd" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE "Tarea1bd";
                postgres    false            �            1259    17764    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    17763    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    17780    actor_participa_en_pelicula    TABLE     c   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer,
    id_pelicula integer
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    17758    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    17757    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    17770    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    17769    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    17805    premio_mejor_actor    TABLE     |   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    17804     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    17794    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    17793 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    17816    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    17815 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227                      0    17764    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   �3                 0    17780    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   �;                 0    17758    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   �A                 0    17770    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   tI                 0    17805    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   �_                 0    17794    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   ~`                 0    17816    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   Ka       !           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217            "           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215            #           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219            $           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 32, true);
          public          postgres    false    224            %           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 32, true);
          public          postgres    false    222            &           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 31, true);
          public          postgres    false    226            p           2606    17768    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            n           2606    17762    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            r           2606    17774    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            v           2606    17809 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225            t           2606    17798 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            x           2606    17820 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            z           2606    17788 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    221    4720    218            {           2606    17783 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    221    220    4722            y           2606    17775 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    4718    216    220            }           2606    17810 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    225    218    4720            |           2606    17799 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    216    4718    223            ~           2606    17821 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    220    4722    227               r  x�eW�Vܸ|���_p�e[��HB�H$�΋��n|���̄��ںٳ�#�jWծ�>������f0oL��`?�]��~y>X&j^���hzs�~��A?V)^��e�i��\��vɮ;�j�Y�r�>�����^O{=3Y��������;�Cv�|5�����N�˘��U%y\8�#+� ؕ�ZH�sQ���e�tvk:3���dz��;3`c�E�N�d�9�1�+O�3�~�Wk���|4�ث�=���%TI�v��nzB�h�;���}ˮ���kBE�(��mG/T/r���3�>�^���^v7�K��/ˀ�eË�=��u�卩����蹬T���]�d��=��g6�x�7�?�%�5y��ӤUR��	{�o������]�z��Ӆ-�ם����³�A���⊓�UOT��`�f���7¸,V�,L漤68|��R�b:�+{�]�qV$��/� e�K�N{\/*T�q��n���Nw��mnp�A����
��a����s!NW���������U�+����?�R������鞒W��'�d��eF#�q)v�,I m�����r<jV�E�CSo���<��N�(�e�/���ڰ��C>i��n٧�?�AmK
R\�(�f��ÇP�N}_�ѵG���RpY�ō�.+vf�W=P����f)�%H��_�������M*J��wUFbO�?�T6���{�ٍ�������^uw�R�U�H� �*�~೏�}x��p̜��O�s|eU�U��y�h���8
��$�m�H�
'��{I�辪!�_�ғ��l<�=3�j��A�_u���	׫Et�P��.�Ŗ+��.�7=�.;y��>u�8��X4���Coq�N�V	��VZ��~n�qP�u�Ķ���D��[_{�wÛ��͟W����H.~6��Q�)f���M��̐y?%J5�!w$��VE�d�~"e����7!�3��(G���7�M�����u����>ڜ�������kE��d�\�[}��z�p��28}�a:s�Uup�V�ʃ[b����כ14��	��&lm<bg#�����b�N��L�H�S�9�a�#T�� .�0���~%�ԍ�r�lL%Y��o%���c��r|��P��j�q�a|��t��q�]� �f3AiH�m���J�FB��M���̢��C>*��ؿ}�2�}�PB�p�m�iL�O	XᚵO�!e����d��M��K$����8�aC?�f*VRP+�"���"̧�>ԋ�y �����! \���uZ�.
��~j�F&*�N�^���� ����Dڸ��,�n
��G�'�� U
$�33�v�-��N`nl&�ԀX��6)E4�����4yR���J,x7N{h� )W}}�/�ae��� �)Eߵ�rZ�>�\�N�0�A���	_�'��P������#I�<햮�.��U�T�{D<D�.)�bHD��3�U°Z�EYW���`�8J�$F\E���RX���>��g�� �l�E�wdU)I�
� ��p�O�9�}�� 7��^E����Yh!� ����iy��+	���11�
	<�5�@�N���w:C���*$�F�6�1�����Rt���!5����%7�y�&� ��c'5�b u$��~.ߒ(����'���Z��v�4��#�d ��_OT��?�@|" �LJ�P � �:C-M���M����9U��
�?2R��9��֨�Y�r��X�Ti0�h
!ğ�[��Y_zKc� ��K�W ��z5Gd��4:�!D_�<��<�>lRO�y1y���"f�Dȶ����:`�J�1N���:[~��kɌ	�)xS-�Zz(��k���=�d�	�a�SE���1����?�� ����         d  x�=�I�1ץ��i��������vw!I�P�|m��N�F/����wJ��볼��YZ�QY�[��7�>^y�<x_۸��k����Z��v�_?|���\�{�*��as��i���7���[&���A>�pq����ZǸ��6�Բ�����m��,���w⬷t�6����i]�ez$��9<|b�׍����L���xxo9���̝ 6,��#d>ob8�qv���I��= �|�Б�:_d���I�M������`�Z+�g�_{T�1�N�qA-k8�6f�Xn�*%�P�XG<<|��Aй�����_n��q-j+���zߔU����Y�;&��!I�Tk�݄��2��b<Adqs����L�q���5�]��(<�V�Ѕ�6��{b��C��;G����k�7���և��Q%/��9G��)`���ҟdb���:��j|5�f�_��17��U�qF�V�##��땳M���ՒtjH��(w|�����3M	�x����E>G6��{��n��u1�$i7�>k���/eOO�v�n�����1?����MPwн����^$��p�M(�og_�n��Y�y"�Ѳ3�J#m^�K"y`�̝H�r���@�4)��MHF|�WR��G��v�N�jqW��dL�* %�=d	�m/���#o����>�Q�ÊDM)
�R�N�Y,��=�`��=���G<V�e�J�-A3�e�м�!p�� rHt�A���R�ȳ��1���9<d[���\���q���Q=uC��Pn�[4)-�s|\Jm�C��|*p`6B:{����~o�zMΫX��TEY��>��"c��z� ��c�hV�6���ZM�S	�=-W!���0�1�1�FV�ڨ�x��܌d���?��;g�ؑr��4�o$�0�t`��"C��$EJ�?!+��$�Z��c���&�u���I|�h�9/��U>fuWîV��t)�A��D0Gw+�z���`&p��@!EZZϝ��|J�@E���cPW��ǘ�}b��q �i:�ܮ�+�'FbLɵ�xt�s�A����dW��hK�s� �)��Y�Ȇ�Z='��;^�U�p�*2� �!0��x~�F10�7���G�������,Tӛ�#�oΚ-�W[YF��gV��&����Qe���H�*�\5Ƌ�co�ݮK�N]�Qx��}3s%�E���$�B���E�'��5+�R��:�s�>�J9rm����aױ%@<�TI��8�-̍�+�s��Cd�����K�=0�;(sb�r��(�FdɄ,�֑#ӕ&54d�-�!A�yAC�\SH�]vwfPc�c�M��8�b��m��Xr�P(����(f���\�ڙ�3E�l�\��Ҕ��~��Z��g(�j9F����N�� 86����JER���r|Q�1�3���s]=c�s����:p���&@,��:��]���_������G�+��o>8]�r
��9ԝ�'����D�l�����R3�L ]�ߜ@.W-��7Jb�K����!o,:;���F�L�ep�ʽ}�x���E���B�sE0����P��ML�lkvx�qvRm���P�%t�M��e�$}{����)����)G         o  x�]WIv�8]��	�$H�K��$�$Y�lI�7P
���*0�]�m�,}��A�j��
��t�C����/��8��b�ͶgM�K�]wf8�ηڝtw�R\�G��vٵq�:�d�+v��O�}��2�bM�kv�ۣ��w��zb�䊝i�O�J�}�/ӡ��ٓ~�L��Em/m��q���/V6\�������k��`o������^�բ`z�퐽���D�W\��8���s��.${c���٭XSsQ�����0��:�x��i2؈U�|�]����a����t�A���]���3S���w�(j�%/�?����������ތ�^#xQ��i���fp����-/$�b�vg7��E�iZ(�NM݈M�#{Ѵ7�ۛ�UXiB��O+�#t����X��3���o�<i�O)�G��e�.���,اe߇�ǉ��e�n�#�-�&�]o]���K[���v�Vk���S����`v#�5/`�G>m���B,��3�&�qi-sv��ܔ\
v����|h^����`��Բ����������Ϊ�Rn�X�sY�zدd��u�%��K�}a{C� yeî@��tpK��t �r��`�@�Q��~0�E��	$�ŵ9���d˫�=�h�#:�g%�Z�k<̭mEɕLOK�Ċ���J���=��j�	�YY��J��~!n����oz ��GW�����u��&A|�	�*����;3�hj^�u��u�~�a��ԥ��U���%ya_��=���{�@��d(�V �:�M�C�@�.K׶DK��������`IZ*�r���(���9�sO���B�&�^�Jˣ&$��r���<�pVU��M3�yk:�z�U�u�Rj���`�j��;��
�k�9�ʅ�7y���%���+ΐ~�wX<�zc�=4e���[�������h%r��l=?(�-v�aH�F%�,���&��w�
k�wUY�x���[n{�[��^�
ޒ̟�z��Z��G k%�f����'��9Y�ذ��� ��{]�1���6O�9ڊ;�#V��k}�ġ��재Ag����\�n0�y\����p=D�#�@���e2���+�?/
�żN��_��j��k|D���2���Ѳ���[�C�AL�X�	���%���C	C�@x��g�b�#%-#��ɼ�r?h���Q25�O���;؁�8�wh�g�)ݡ`E�!���.��O����6�׳�F��A�G �)J��22�]GMKNsr<�5��2���3��y�P=p��|F���@~��v$x������6�x	�������:`��ĺw�����TB�J���ʍE-M�4sU[-o@���d������T��8�@B��!¤��M������l�a���z�ʗ���n�v���q��oB 
��;��0�l�݁2��FO`�7:7yq0�Uǵ��eY�ĉ5���� Q�.���!��@�z+�����Je�+'S'� �oC9���L�A�Up-oP�^2?q�f-��̏#�D�E০���*�Lʩnd�vAO$G�~��T���t�!]��:��\L=C�{���H�4�W[FP,������iQ���(���Y��!�����38B��3�x��O�VѯC�E[����e�Bo�DU��Kh@�ju�0�����x��ˀF��N�2�b��|>�F1��?	�B� ��>0���)�iP�{�M���-cٹ�+f�%`#;0.�&�i�
%N��7�Ebx�'���Ju�>��x��
b������|M�%�4�Fv�n�!�R�1',��L`P�޵��	d�g̑C�rEH�\���H��6<�kP`D��� ~������#�M            x��\��云�ɯ�h > �
Ik]9ڍXgv5��7X���c5s�5��XOn���/�5�24Ҡ $2O�<�]i�V��|Lï�|y�������e��m�އ���C���2J�/ʾ�6��p�}�-q��x;=^��2���R��t�>��Z��Ҿ�e��躩�kp)���q����,��}},�ߖ�p=�������-��۪����y�]q�<|�M�x�?���pEK[���\[�2|y���W��a���q�N�\y�t/�Ѿ��&�\j��Moa��u�:��&���M߯��̝�]��m��F��.?4�fU-,���
n k���p˖ޖ��:TZ.�Ce��J��OS���x��4O�Q�y��t�}��4�֪�;y��t�wy�K�������������ְ�儯���oO)��?�����s�|�����t_�k0���h"~�?���pm��$�E�����Z2��p�>|��l#� /�������p�π7o+��ۼ�sf_x��~��3���t��봐���hqݡ�ѣ>�u��c|�?߇�o�M��灋��s1�u�n��ˀ�����V��N�)�F�:��4�9���#��u�=�aT�"p������t���Ӑ%�M}e�&��l�<T�1�벊{��9����:O�fy%X�����
��o)������������@vYV��h2�����{�E+����
�T�����[}�`D�~��~�u�����l���Ũ�������-���ƣ�+�]�[����ZN��3Ĩ{N����Kh�9Z����6�0Rx۰�4�s�Xk\��:���:��~{��x��(�؀ԺA$��B��`��Kx���q�Hq�v�����Mm���6�����dqi�:�V5�v�����}6��n���ʍ�,Y�l}n�m<}��/՟&����I�hi��v6���|�) ��_����p�EH8i��tӯ8nmHj��BtF:s�b���L����
�0�&��~�����A�:?�X�a	'<z%"��=���y�b��C���X�B���fYz]N����d�楁glj������p�L��� b�	>�4w�������:J��6�a;�p�<l�1^�8 ���.�j��%rt��5[ӡ�-�%l���<���1Мw���F�Q�q��T t�+�����A��,��P�l궥tW�2����o1x(����ۮj6�:#XL�,��	�!f�������>|OY�VX�6� �ڪ�	э�rc^�f��lHk�-�n�p�!�m�{����8�<��KM��OFt��G��Tf�%��O�*I�H6�NcB��x��޵̰��ۙ�٣[C�lr��g��nخ�ۜZ@Ir�@�(0�T��E��1~�s�67���TmP�(ODj,��n��3�5��F�E��X ��tϠ"X�?���d��0K��+]�>�zLV�����\�f|�G@�o79T5����gM�dW���"�7�i�e
��x^�Ӳ�l0ȼ'�����uG�zȨ��-�#��ޤ|t����Ř:�/�X�ք���-�D���LS�|���vO>I���G�P�4&���<�Y�H!S�`��9��}P�8�<4�������K̤�UO��2އ˲~]n�-����,�]������֯��R�D���R��%n��q��%�ص�����Y.�|���8��%�%�mj|I{�p��{F>Z"x���H��#� v�E�Z���&	:����<=P����4���2��u�z4|�X1�Ê�+�c�8����(�5$ OI�'˪x�{�۷�;��p��15�vO���\�4��M�d��r��E��.��+M���E"�l��!�xٓ�aG>.|w�aQ���P�;�S{T������D��Uk�m��������^kF��V�!��PF*���XwB�0g>F�� E��dvgf�]�g�f��<E]�#�h�6G�k�n�!��(6Gg"+�e����(@BK�	�y~M�:r"�1��#y�7�5�׈锁,W���J8W	Dp\��΅�d�"e_c (��ʯ3�-���k�) �Y���܉�+/��(��p!%��
u޴N�.�<a2�ja,�&g�IX�X���9<aL��a���Sm�b��L�>��yM�Ꝉ�
kC��{R���>�8�����GNg�&�D�ek:R1���y�j�P��	�i8�l�����]��XJ���Th�|�eΊ6�EZ���r'�<A<�����P�#�s�O��L"\�!/k�T��NN�B�JgD���c�'�v�)�o$�����F~!:e��R%�(��A���-�c'L�k�����VP��#@g)���6¯X!��B31 >7�R��L��eRy��͋$.�dU#�CI@����?J��i���O ���qIjMdNO)�SvG=��C(�߃���M(��O`�`�NA&}lM�]Y	O/�[���>@%Pј�\'��R5��6���a�KQ%����}.�Pd>"g�Ta��"e�Nz�T��u[
~�ו]�y�Mb�GC���:|O�s`޴]<�E2�dd�J��NHP�&l�R������O���:�߇�r4qϛ���i�DL͟+�V�4��`b�pm{P��`_�UK�	���b�,Y�)xE�4Cw�(�	Q���[��O()ۑp��ȉ���4�1>5�p
/j�d)��';��]#/�x���\�����Oy��^`��I2��.O1��mx���Ŵo�� �u/X�:���TĲ6��>�)��zSInJm�zE�� ��i�M4c}�{EL���k���#�
�E'N<,��O�Rf���^梸��� �����$R�k^5Ĭ��ƵG�F�^)=(vT���y�lQ�_�쫥�%�_��)��"�$F�\B04^��'�"�c$aZ3ֺ�X�)���9yBD�~$�dj�g����N+,c�&�f��M$6�dϊX䉡�U��tZ��d�鴬�)2"�*��FH�������m/ �F5�Uۗ�m֢I�O+ڳ���%M�3�B`!�l�A�o�QA��Z�h@r��9L=�X����I�\�^l�1���!݄ҁ}���Ɩs���8�u'̳%wZT��W i\�k:%�LM�0����-��rHzN��5�
��A�.bBhS�v��:x^�c�)�U�GH=Ԭ��E���=w�M�.C,��O���]�M���}>�ޘ�a�I����?%���0��O����c���� P���Qؖ�Y��m(GP�n��FC%��Kbk�P(MsA�i�$��b� %�f�*ö�ĺ��,�]Ԥ�>jG�E������o)IA���������
�aG��w$<��n��AG�Z�F}�N�i)�1�E��m������j�&ґ:�;�GN�&u��/�t��{��XHR�B���P���ǫ����>~-�06��J9�Y�����F��t)k�mPE<7+ʟ�����2
��Tˆq�<M��nK�D����;Y5��pV<�႐r(�a��	fwm�Q��x��DKi��y�����5���a)�	���ξ�ѐT�d)�%&ICN>����.e.� Cc�?�����S�`��ź]��}�k�O����bP���k��H�G�Ǽ����l^L�JT���kjc���g,��qބ���Y
ȓo�/���UI�iInd>��M���!2Y���Ѐ'�ү��z��6Y;1UN����	H�s,�Dl٢6��-��X��yO����-Q��w�xL�R\I*�oB�d�L�3	��R�!q0���v��!	�kKN�P���P��Q=���="L�w�����(�#^�/y���b�5� +B�&�"}QOiGj���B��!���ʾ��})4�L�r2vc)��~7Bè?�/���n�i�����Ot���yI�?���n�A!�H��.im����(��9���%���J��WfVUb��"Sh��i��k��}�Oi�ɨ��6KD��\��$�Ǡ�d��p;JڜJDj�x4{D� /  
a%��$�EF�2�[��m�Ǎ(�b��!U��ۉ��N��5�p�Qa;v�$�Fo�w���6�n�ۑ����Ȓ`C��HT��������|�� �n�C�sy�"��%(��p�������9bb��݆�_��❞���!K�ۊ�����<�"ֿ��J�Rǣ�]��q�m�u�a��af3�^�ԛԋ��d���Xy���19n�t�C��U�8̕�Q��	K��=W�L���Lv
.�&nZ�7&��9�\9��ʹE�i 8��|5��p��"ٳ��p2�u��2�n~0=e�*P�ؠt�pr�B��MU)��=*��`�N�'�J�4��0$�DB-����j�4w��	�h\�'��a?IEE٤��Fwl"d��i��x3)	�{�5�'U@�7
�=�� j�<���敓=�H+�jQԛu��d���n�������U���%s�|���]
wŶ����j�Kݕ;兦���\gCU��Z\���v�v_n�
�Vc�n7������R�^撐�#1�{��Ƙ�y�G�C���bC>J�7�;�L�
-s�Л�K�-D�l�=���v��h"֖�z�����Aq�%��t��J���b�0]�d�5���<i&��эO���rs�VMpg��l�%�|ڬ��2A_>�b�ڠ���>�ɦ�<��~��U�V�1��{3n/�:lq��lCR�z[PfGĲoJ��Ѡ��č�l�q���Zu���{�V�s�TƓ������E}� �X���\��籴�L�Z%m3��ޤP��|f����e��t���A�G5M�Pi*ܠ�ͩ'���;�A��]�hΦ�ɜ4�$��#ݏ����WM�0[;KI�/��"��,�%�7w.���d�`'�%�\T�]j/o_� JrW��p8:�HR�2�:~ �9�����^�Ǽ�X���	�� >���+v�-��G1���;���}+��Aw��g��e��;4�/ESg��ʔR���#4{:l��5����ם� �X[����:��E'�O�1�G�iO��sd�9�(�I"��$�����#�nd�� �Q�(�S��2��14ae F��.e�&Iy�{�Jw��rxީ�S'�6U�v����k)����dnv�隸5c�vR.�5��ShI� ��#��^v���_hZY3��U��|5C��,p_��xǒK�iQ�*�\ǪN0#7k��8���,l�} \$�?�w@��t6h�Y���fvZFS�]�!^�M3�pp������ɚ�xe����S*����d�K��������d�bj��ʀp�����t>�i�.1}�Aip������9�cql�S/� /汴��Q<z��cm�9)8~8����]�HD���y2�e��
�,�E�G�G�nS�Ӱ�"VYYI�3�Ъ������4�D�/"��fO�z� "� .h����^y����Tlk��p���-Ο}d�:?���o��\���ez̓��#����I�	�C�ԯ1$��4�,4w����p��y;6.ߪ�[ȝ��k�1���	�����vW7ȼ��Y ��\~����u]��L�         �   x�5�ˑ1C�(�-��\&�8V�3��_		����sa��4�i81�k5L��O��R�(~V����[��������������#@���Kz:����n�e㴘���n���l)��N)�P��3nrkB�����|v1��wq~�FU�.>���Q��V��S�ۺ���?��=���?�8�         �   x�5���@!CϤ�~�^��:6������}�x����H��XƵ-<��N�3�˅�7��k�D[�!G.ЧK�iԹmc_3���pY����Z�����c�L"m����+H��K;���"k�)Zo����g�R��z=�(�cO����,'�)"�Ϊ��e�/�HZ]� ey��? � �9s         �   x�-��!CϤ�}&(j/�f�$�ȏ0tv��	�V��H�꽘�꫈e�1>�S��OG8�Z�M�`�A�ՎR�tm���T[��&�ٺ��K����Ffs�AO�A����*{��� C�	����v����o1��\���?ơ��ِ��l����߂��X�^��:ϻ�t������_9`     