PGDMP         6                v            hien_portfolio_db    9.6.8    9.6.8 o              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16384    hien_portfolio_db    DATABASE     �   CREATE DATABASE hien_portfolio_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
 !   DROP DATABASE hien_portfolio_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12393    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16385    about_me_plugin_aboutme    TABLE     �   CREATE TABLE public.about_me_plugin_aboutme (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 +   DROP TABLE public.about_me_plugin_aboutme;
       public         postgres    false    3            �            1259    16391    about_me_plugin_aboutme_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_me_plugin_aboutme_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.about_me_plugin_aboutme_id_seq;
       public       postgres    false    185    3                       0    0    about_me_plugin_aboutme_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.about_me_plugin_aboutme_id_seq OWNED BY public.about_me_plugin_aboutme.id;
            public       postgres    false    186            �            1259    16393    about_me_plugin_skill    TABLE       CREATE TABLE public.about_me_plugin_skill (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    percentage integer NOT NULL,
    about_me_id_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 )   DROP TABLE public.about_me_plugin_skill;
       public         postgres    false    3            �            1259    16396    about_me_plugin_skill_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_me_plugin_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_me_plugin_skill_id_seq;
       public       postgres    false    3    187                       0    0    about_me_plugin_skill_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.about_me_plugin_skill_id_seq OWNED BY public.about_me_plugin_skill.id;
            public       postgres    false    188            �            1259    16398    about_me_plugin_statistic    TABLE     Y  CREATE TABLE public.about_me_plugin_statistic (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    statistic character varying(20) NOT NULL,
    about_me_id_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    fa_icon character varying(80) NOT NULL
);
 -   DROP TABLE public.about_me_plugin_statistic;
       public         postgres    false    3            �            1259    16401     about_me_plugin_statistic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.about_me_plugin_statistic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.about_me_plugin_statistic_id_seq;
       public       postgres    false    3    189                       0    0     about_me_plugin_statistic_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.about_me_plugin_statistic_id_seq OWNED BY public.about_me_plugin_statistic.id;
            public       postgres    false    190            �            1259    16403    aldryn_style_style    TABLE       CREATE TABLE public.aldryn_style_style (
    label character varying(128) NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    class_name character varying(50) NOT NULL,
    id_name character varying(50) NOT NULL,
    tag_type character varying(50) NOT NULL,
    padding_left smallint,
    padding_right smallint,
    padding_top smallint,
    padding_bottom smallint,
    margin_left smallint,
    margin_right smallint,
    margin_top smallint,
    margin_bottom smallint,
    additional_class_names text NOT NULL
);
 &   DROP TABLE public.aldryn_style_style;
       public         postgres    false    3            �            1259    16409 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    16412    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    192    3                        0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    193            �            1259    16414    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    16417    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    194            !           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    195            �            1259    16419    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    16422    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    196            "           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    197            �            1259    16424 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    16430    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    16433    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    199    3            #           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    200            �            1259    16435    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    198            $           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    201            �            1259    16437    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    16440 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    202            %           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    203            �            1259    16442    cms_aliaspluginmodel    TABLE     �   CREATE TABLE public.cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);
 (   DROP TABLE public.cms_aliaspluginmodel;
       public         postgres    false    3            �            1259    16445    cms_cmsplugin    TABLE     �  CREATE TABLE public.cms_cmsplugin (
    id integer NOT NULL,
    "position" smallint NOT NULL,
    language character varying(15) NOT NULL,
    plugin_type character varying(50) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    parent_id integer,
    placeholder_id integer,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    path character varying(255) NOT NULL,
    CONSTRAINT cms_cmsplugin_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_cmsplugin_numchild_check CHECK ((numchild >= 0)),
    CONSTRAINT cms_cmsplugin_position_check CHECK (("position" >= 0))
);
 !   DROP TABLE public.cms_cmsplugin;
       public         postgres    false    3            �            1259    16451    cms_cmsplugin_id_seq    SEQUENCE     }   CREATE SEQUENCE public.cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cms_cmsplugin_id_seq;
       public       postgres    false    3    205            &           0    0    cms_cmsplugin_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cms_cmsplugin_id_seq OWNED BY public.cms_cmsplugin.id;
            public       postgres    false    206            �            1259    16453    cms_globalpagepermission    TABLE     �  CREATE TABLE public.cms_globalpagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    can_recover_page boolean NOT NULL,
    group_id integer,
    user_id integer
);
 ,   DROP TABLE public.cms_globalpagepermission;
       public         postgres    false    3            �            1259    16456    cms_globalpagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cms_globalpagepermission_id_seq;
       public       postgres    false    3    207            '           0    0    cms_globalpagepermission_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.cms_globalpagepermission_id_seq OWNED BY public.cms_globalpagepermission.id;
            public       postgres    false    208            �            1259    16458    cms_globalpagepermission_sites    TABLE     �   CREATE TABLE public.cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);
 2   DROP TABLE public.cms_globalpagepermission_sites;
       public         postgres    false    3            �            1259    16461 %   cms_globalpagepermission_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cms_globalpagepermission_sites_id_seq;
       public       postgres    false    3    209            (           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.cms_globalpagepermission_sites_id_seq OWNED BY public.cms_globalpagepermission_sites.id;
            public       postgres    false    210            �            1259    16463    cms_page    TABLE     �  CREATE TABLE public.cms_page (
    id integer NOT NULL,
    created_by character varying(255) NOT NULL,
    changed_by character varying(255) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    publication_date timestamp with time zone,
    publication_end_date timestamp with time zone,
    in_navigation boolean NOT NULL,
    soft_root boolean NOT NULL,
    reverse_id character varying(40),
    navigation_extenders character varying(80),
    template character varying(100) NOT NULL,
    login_required boolean NOT NULL,
    limit_visibility_in_menu smallint,
    is_home boolean NOT NULL,
    application_urls character varying(200),
    application_namespace character varying(200),
    publisher_is_draft boolean NOT NULL,
    languages character varying(255),
    xframe_options integer NOT NULL,
    publisher_public_id integer,
    is_page_type boolean NOT NULL,
    node_id integer NOT NULL
);
    DROP TABLE public.cms_page;
       public         postgres    false    3            �            1259    16469    cms_page_id_seq    SEQUENCE     x   CREATE SEQUENCE public.cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cms_page_id_seq;
       public       postgres    false    3    211            )           0    0    cms_page_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cms_page_id_seq OWNED BY public.cms_page.id;
            public       postgres    false    212            �            1259    16471    cms_page_placeholders    TABLE     �   CREATE TABLE public.cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);
 )   DROP TABLE public.cms_page_placeholders;
       public         postgres    false    3            �            1259    16474    cms_page_placeholders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_page_placeholders_id_seq;
       public       postgres    false    213    3            *           0    0    cms_page_placeholders_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cms_page_placeholders_id_seq OWNED BY public.cms_page_placeholders.id;
            public       postgres    false    214            �            1259    16476    cms_pagepermission    TABLE     �  CREATE TABLE public.cms_pagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    grant_on integer NOT NULL,
    group_id integer,
    page_id integer,
    user_id integer
);
 &   DROP TABLE public.cms_pagepermission;
       public         postgres    false    3            �            1259    16479    cms_pagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cms_pagepermission_id_seq;
       public       postgres    false    3    215            +           0    0    cms_pagepermission_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.cms_pagepermission_id_seq OWNED BY public.cms_pagepermission.id;
            public       postgres    false    216            �            1259    16481    cms_pageuser    TABLE     k   CREATE TABLE public.cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
     DROP TABLE public.cms_pageuser;
       public         postgres    false    3            �            1259    16484    cms_pageusergroup    TABLE     q   CREATE TABLE public.cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
 %   DROP TABLE public.cms_pageusergroup;
       public         postgres    false    3            �            1259    16487    cms_placeholder    TABLE     �   CREATE TABLE public.cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);
 #   DROP TABLE public.cms_placeholder;
       public         postgres    false    3            �            1259    16491    cms_placeholder_id_seq    SEQUENCE        CREATE SEQUENCE public.cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cms_placeholder_id_seq;
       public       postgres    false    219    3            ,           0    0    cms_placeholder_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cms_placeholder_id_seq OWNED BY public.cms_placeholder.id;
            public       postgres    false    220            �            1259    16493    cms_placeholderreference    TABLE     �   CREATE TABLE public.cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);
 ,   DROP TABLE public.cms_placeholderreference;
       public         postgres    false    3            �            1259    16496    cms_staticplaceholder    TABLE     -  CREATE TABLE public.cms_staticplaceholder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    dirty boolean NOT NULL,
    creation_method character varying(20) NOT NULL,
    draft_id integer,
    public_id integer,
    site_id integer
);
 )   DROP TABLE public.cms_staticplaceholder;
       public         postgres    false    3            �            1259    16502    cms_staticplaceholder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_staticplaceholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_staticplaceholder_id_seq;
       public       postgres    false    222    3            -           0    0    cms_staticplaceholder_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cms_staticplaceholder_id_seq OWNED BY public.cms_staticplaceholder.id;
            public       postgres    false    223            �            1259    16504 	   cms_title    TABLE     �  CREATE TABLE public.cms_title (
    id integer NOT NULL,
    language character varying(15) NOT NULL,
    title character varying(255) NOT NULL,
    page_title character varying(255),
    menu_title character varying(255),
    meta_description text,
    slug character varying(255) NOT NULL,
    path character varying(255) NOT NULL,
    has_url_overwrite boolean NOT NULL,
    redirect character varying(2048),
    creation_date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    publisher_is_draft boolean NOT NULL,
    publisher_state smallint NOT NULL,
    page_id integer NOT NULL,
    publisher_public_id integer
);
    DROP TABLE public.cms_title;
       public         postgres    false    3            �            1259    16510    cms_title_id_seq    SEQUENCE     y   CREATE SEQUENCE public.cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cms_title_id_seq;
       public       postgres    false    3    224            .           0    0    cms_title_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cms_title_id_seq OWNED BY public.cms_title.id;
            public       postgres    false    225            �            1259    16512    cms_treenode    TABLE     Z  CREATE TABLE public.cms_treenode (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    parent_id integer,
    site_id integer NOT NULL,
    CONSTRAINT cms_treenode_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_treenode_numchild_check CHECK ((numchild >= 0))
);
     DROP TABLE public.cms_treenode;
       public         postgres    false    3            �            1259    16517    cms_treenode_id_seq    SEQUENCE     |   CREATE SEQUENCE public.cms_treenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cms_treenode_id_seq;
       public       postgres    false    3    226            /           0    0    cms_treenode_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cms_treenode_id_seq OWNED BY public.cms_treenode.id;
            public       postgres    false    227            �            1259    16519    cms_urlconfrevision    TABLE     s   CREATE TABLE public.cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);
 '   DROP TABLE public.cms_urlconfrevision;
       public         postgres    false    3            �            1259    16522    cms_urlconfrevision_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_urlconfrevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cms_urlconfrevision_id_seq;
       public       postgres    false    3    228            0           0    0    cms_urlconfrevision_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cms_urlconfrevision_id_seq OWNED BY public.cms_urlconfrevision.id;
            public       postgres    false    229            �            1259    16524    cms_usersettings    TABLE     �   CREATE TABLE public.cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);
 $   DROP TABLE public.cms_usersettings;
       public         postgres    false    3            �            1259    16527    cms_usersettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_usersettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cms_usersettings_id_seq;
       public       postgres    false    3    230            1           0    0    cms_usersettings_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cms_usersettings_id_seq OWNED BY public.cms_usersettings.id;
            public       postgres    false    231            �            1259    16529 #   contact_me_plugin_callactionsection    TABLE       CREATE TABLE public.contact_me_plugin_callactionsection (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(150) NOT NULL,
    message character varying(500) NOT NULL,
    image character varying(100) NOT NULL,
    background_image character varying(100)
);
 7   DROP TABLE public.contact_me_plugin_callactionsection;
       public         postgres    false    3            �            1259    16535    contact_me_plugin_contactme    TABLE     �   CREATE TABLE public.contact_me_plugin_contactme (
    cmsplugin_ptr_id integer NOT NULL,
    phone character varying(100) NOT NULL,
    address character varying(250) NOT NULL,
    email character varying(150) NOT NULL
);
 /   DROP TABLE public.contact_me_plugin_contactme;
       public         postgres    false    3            �            1259    16541    contact_me_plugin_googlemap    TABLE     �   CREATE TABLE public.contact_me_plugin_googlemap (
    cmsplugin_ptr_id integer NOT NULL,
    address character varying(250) NOT NULL
);
 /   DROP TABLE public.contact_me_plugin_googlemap;
       public         postgres    false    3            �            1259    16544    contact_me_plugin_message    TABLE       CREATE TABLE public.contact_me_plugin_message (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    email character varying(250) NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 -   DROP TABLE public.contact_me_plugin_message;
       public         postgres    false    3            �            1259    16550     contact_me_plugin_message_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_me_plugin_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.contact_me_plugin_message_id_seq;
       public       postgres    false    3    235            2           0    0     contact_me_plugin_message_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.contact_me_plugin_message_id_seq OWNED BY public.contact_me_plugin_message.id;
            public       postgres    false    236            �            1259    16552    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    16559    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    237    3            3           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    238            �            1259    16561    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    16564    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    239    3            4           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    240            �            1259    16566    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    16572    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    241            5           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    242            �            1259    16574    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    16580    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    3            �            1259    16583    django_site_id_seq    SEQUENCE     {   CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    244    3            6           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
            public       postgres    false    245            �            1259    16585    djangocms_column_column    TABLE     �   CREATE TABLE public.djangocms_column_column (
    cmsplugin_ptr_id integer NOT NULL,
    width character varying(50) NOT NULL
);
 +   DROP TABLE public.djangocms_column_column;
       public         postgres    false    3            �            1259    16588    djangocms_column_multicolumns    TABLE     ]   CREATE TABLE public.djangocms_column_multicolumns (
    cmsplugin_ptr_id integer NOT NULL
);
 1   DROP TABLE public.djangocms_column_multicolumns;
       public         postgres    false    3            �            1259    16591    djangocms_file_file    TABLE     m  CREATE TABLE public.djangocms_file_file (
    cmsplugin_ptr_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    link_title character varying(255) NOT NULL,
    file_src_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL,
    show_file_size boolean NOT NULL
);
 '   DROP TABLE public.djangocms_file_file;
       public         postgres    false    3            �            1259    16597    djangocms_file_folder    TABLE       CREATE TABLE public.djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);
 )   DROP TABLE public.djangocms_file_folder;
       public         postgres    false    3            �            1259    16603    djangocms_googlemap_googlemap    TABLE     i  CREATE TABLE public.djangocms_googlemap_googlemap (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    zoom smallint NOT NULL,
    lat double precision,
    lng double precision,
    width character varying(6) NOT NULL,
    height character varying(6) NOT NULL,
    scrollwheel boolean NOT NULL,
    double_click_zoom boolean NOT NULL,
    draggable boolean NOT NULL,
    keyboard_shortcuts boolean NOT NULL,
    pan_control boolean NOT NULL,
    zoom_control boolean NOT NULL,
    street_view_control boolean NOT NULL,
    style text NOT NULL,
    fullscreen_control boolean NOT NULL,
    map_type_control character varying(255) NOT NULL,
    rotate_control boolean NOT NULL,
    scale_control boolean NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_googlemap_googlemap_zoom_check CHECK ((zoom >= 0))
);
 1   DROP TABLE public.djangocms_googlemap_googlemap;
       public         postgres    false    3            �            1259    16610 #   djangocms_googlemap_googlemapmarker    TABLE     A  CREATE TABLE public.djangocms_googlemap_googlemapmarker (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    lat numeric(10,6),
    lng numeric(10,6),
    show_content boolean NOT NULL,
    info_content text NOT NULL,
    icon_id integer
);
 7   DROP TABLE public.djangocms_googlemap_googlemapmarker;
       public         postgres    false    3            �            1259    16616 "   djangocms_googlemap_googlemaproute    TABLE       CREATE TABLE public.djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);
 6   DROP TABLE public.djangocms_googlemap_googlemaproute;
       public         postgres    false    3            �            1259    16622    djangocms_link_link    TABLE     �  CREATE TABLE public.djangocms_link_link (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    internal_link_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL
);
 '   DROP TABLE public.djangocms_link_link;
       public         postgres    false    3            �            1259    16628    djangocms_picture_picture    TABLE     e  CREATE TABLE public.djangocms_picture_picture (
    cmsplugin_ptr_id integer NOT NULL,
    link_url character varying(2040) NOT NULL,
    alignment character varying(255) NOT NULL,
    link_page_id integer,
    height integer,
    width integer,
    picture_id integer,
    attributes text NOT NULL,
    caption_text text NOT NULL,
    link_attributes text NOT NULL,
    link_target character varying(255) NOT NULL,
    use_automatic_scaling boolean NOT NULL,
    use_crop boolean NOT NULL,
    use_no_cropping boolean NOT NULL,
    use_upscale boolean NOT NULL,
    thumbnail_options_id integer,
    external_picture character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_picture_picture_height_3db3e080_check CHECK ((height >= 0)),
    CONSTRAINT djangocms_picture_picture_width_5bba3699_check CHECK ((width >= 0))
);
 -   DROP TABLE public.djangocms_picture_picture;
       public         postgres    false    3            �            1259    16636    djangocms_snippet_snippet    TABLE     �   CREATE TABLE public.djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 -   DROP TABLE public.djangocms_snippet_snippet;
       public         postgres    false    3                        1259    16642     djangocms_snippet_snippet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djangocms_snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djangocms_snippet_snippet_id_seq;
       public       postgres    false    255    3            7           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.djangocms_snippet_snippet_id_seq OWNED BY public.djangocms_snippet_snippet.id;
            public       postgres    false    256                       1259    16644    djangocms_snippet_snippetptr    TABLE     }   CREATE TABLE public.djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);
 0   DROP TABLE public.djangocms_snippet_snippetptr;
       public         postgres    false    3                       1259    16647    djangocms_text_ckeditor_text    TABLE     t   CREATE TABLE public.djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);
 0   DROP TABLE public.djangocms_text_ckeditor_text;
       public         postgres    false    3                       1259    16653    djangocms_video_videoplayer    TABLE       CREATE TABLE public.djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL
);
 /   DROP TABLE public.djangocms_video_videoplayer;
       public         postgres    false    3                       1259    16659    djangocms_video_videosource    TABLE     �   CREATE TABLE public.djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);
 /   DROP TABLE public.djangocms_video_videosource;
       public         postgres    false    3                       1259    16665    djangocms_video_videotrack    TABLE       CREATE TABLE public.djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);
 .   DROP TABLE public.djangocms_video_videotrack;
       public         postgres    false    3                       1259    16671    easy_thumbnails_source    TABLE     �   CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    3                       1259    16674    easy_thumbnails_source_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    262    3            8           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;
            public       postgres    false    263                       1259    16676    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    3            	           1259    16679     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    3    264            9           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;
            public       postgres    false    265            
           1259    16681 #   easy_thumbnails_thumbnaildimensions    TABLE     K  CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false    3                       1259    16686 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    266    3            :           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    267                       1259    16688    filer_clipboard    TABLE     _   CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         postgres    false    3                       1259    16691    filer_clipboard_id_seq    SEQUENCE        CREATE SEQUENCE public.filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       postgres    false    3    268            ;           0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;
            public       postgres    false    269                       1259    16693    filer_clipboarditem    TABLE     �   CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         postgres    false    3                       1259    16696    filer_clipboarditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       postgres    false    3    270            <           0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;
            public       postgres    false    271                       1259    16698 
   filer_file    TABLE       CREATE TABLE public.filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size integer,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);
    DROP TABLE public.filer_file;
       public         postgres    false    3                       1259    16704    filer_file_id_seq    SEQUENCE     z   CREATE SEQUENCE public.filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       postgres    false    3    272            =           0    0    filer_file_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;
            public       postgres    false    273                       1259    16706    filer_folder    TABLE     �  CREATE TABLE public.filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);
     DROP TABLE public.filer_folder;
       public         postgres    false    3                       1259    16713    filer_folder_id_seq    SEQUENCE     |   CREATE SEQUENCE public.filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       postgres    false    274    3            >           0    0    filer_folder_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;
            public       postgres    false    275                       1259    16715    filer_folderpermission    TABLE       CREATE TABLE public.filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);
 *   DROP TABLE public.filer_folderpermission;
       public         postgres    false    3                       1259    16718    filer_folderpermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       postgres    false    3    276            ?           0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;
            public       postgres    false    277                       1259    16720    filer_image    TABLE     �  CREATE TABLE public.filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64) NOT NULL
);
    DROP TABLE public.filer_image;
       public         postgres    false    3                       1259    16726    filer_thumbnailoption    TABLE     �   CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         postgres    false    3                       1259    16729    filer_thumbnailoption_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       postgres    false    279    3            @           0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;
            public       postgres    false    280                       1259    16731    hero_area_plugin_heroarea    TABLE       CREATE TABLE public.hero_area_plugin_heroarea (
    cmsplugin_ptr_id integer NOT NULL,
    intro_title character varying(250) NOT NULL,
    title character varying(250) NOT NULL,
    background_image character varying(100) NOT NULL,
    youtube_introduction character varying(500)
);
 -   DROP TABLE public.hero_area_plugin_heroarea;
       public         postgres    false    3                       1259    16737    hero_area_plugin_shortheroarea    TABLE     �   CREATE TABLE public.hero_area_plugin_shortheroarea (
    cmsplugin_ptr_id integer NOT NULL,
    page_title character varying(100) NOT NULL,
    page_message character varying(150) NOT NULL,
    background_image character varying(100) NOT NULL
);
 2   DROP TABLE public.hero_area_plugin_shortheroarea;
       public         postgres    false    3                       1259    16740    menus_cachekey    TABLE     �   CREATE TABLE public.menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);
 "   DROP TABLE public.menus_cachekey;
       public         postgres    false    3                       1259    16747    menus_cachekey_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.menus_cachekey_id_seq;
       public       postgres    false    3    283            A           0    0    menus_cachekey_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.menus_cachekey_id_seq OWNED BY public.menus_cachekey.id;
            public       postgres    false    284                       1259    16749    portfolio_app_latestworksection    TABLE     �   CREATE TABLE public.portfolio_app_latestworksection (
    cmsplugin_ptr_id integer NOT NULL,
    message character varying(500) NOT NULL
);
 3   DROP TABLE public.portfolio_app_latestworksection;
       public         postgres    false    3                       1259    16752    portfolio_app_mediaasset    TABLE     U  CREATE TABLE public.portfolio_app_mediaasset (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    type smallint NOT NULL,
    media_asset character varying(100) NOT NULL,
    youtube_url character varying(255),
    project_id_id integer NOT NULL,
    CONSTRAINT portfolio_app_mediaasset_type_check CHECK ((type >= 0))
);
 ,   DROP TABLE public.portfolio_app_mediaasset;
       public         postgres    false    3                       1259    16756    portfolio_app_mediaasset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_mediaasset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.portfolio_app_mediaasset_id_seq;
       public       postgres    false    3    286            B           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.portfolio_app_mediaasset_id_seq OWNED BY public.portfolio_app_mediaasset.id;
            public       postgres    false    287                        1259    16758    portfolio_app_project    TABLE     �  CREATE TABLE public.portfolio_app_project (
    cmsplugin_ptr_id integer NOT NULL,
    slug character varying(255) NOT NULL,
    title character varying(250),
    sub_title character varying(250),
    short_description text NOT NULL,
    description text NOT NULL,
    skills character varying(255),
    roles character varying(255),
    client character varying(255),
    length character varying(50),
    demo_url character varying(255),
    youtube_embed_url character varying(255),
    top_image character varying(500) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    android_demo_url character varying(500),
    ios_demo_url character varying(500)
);
 )   DROP TABLE public.portfolio_app_project;
       public         postgres    false    3            !           1259    16764    portfolio_app_project_tags    TABLE     �   CREATE TABLE public.portfolio_app_project_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    tag_id integer NOT NULL
);
 .   DROP TABLE public.portfolio_app_project_tags;
       public         postgres    false    3            "           1259    16767 !   portfolio_app_project_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.portfolio_app_project_tags_id_seq;
       public       postgres    false    289    3            C           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.portfolio_app_project_tags_id_seq OWNED BY public.portfolio_app_project_tags.id;
            public       postgres    false    290            #           1259    16769    portfolio_app_tag    TABLE     {   CREATE TABLE public.portfolio_app_tag (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public.portfolio_app_tag;
       public         postgres    false    3            $           1259    16772    services_plugin_serviceitem    TABLE     	  CREATE TABLE public.services_plugin_serviceitem (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    content character varying(500) NOT NULL,
    icon_class_name character varying(250) NOT NULL,
    services_component_id_id integer NOT NULL
);
 /   DROP TABLE public.services_plugin_serviceitem;
       public         postgres    false    3            %           1259    16778 "   services_plugin_serviceitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.services_plugin_serviceitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.services_plugin_serviceitem_id_seq;
       public       postgres    false    292    3            D           0    0 "   services_plugin_serviceitem_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.services_plugin_serviceitem_id_seq OWNED BY public.services_plugin_serviceitem.id;
            public       postgres    false    293            &           1259    16780 !   services_plugin_servicescomponent    TABLE     a   CREATE TABLE public.services_plugin_servicescomponent (
    cmsplugin_ptr_id integer NOT NULL
);
 5   DROP TABLE public.services_plugin_servicescomponent;
       public         postgres    false    3            '           1259    16783 '   testimonial_plugin_testimonialcomponent    TABLE     �   CREATE TABLE public.testimonial_plugin_testimonialcomponent (
    cmsplugin_ptr_id integer NOT NULL,
    background_image character varying(100) NOT NULL
);
 ;   DROP TABLE public.testimonial_plugin_testimonialcomponent;
       public         postgres    false    3            (           1259    16786 "   testimonial_plugin_testimonialitem    TABLE     �   CREATE TABLE public.testimonial_plugin_testimonialitem (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    content character varying(500) NOT NULL,
    testimonial_id_id integer NOT NULL
);
 6   DROP TABLE public.testimonial_plugin_testimonialitem;
       public         postgres    false    3            )           1259    16792 )   testimonial_plugin_testimonialitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.testimonial_plugin_testimonialitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.testimonial_plugin_testimonialitem_id_seq;
       public       postgres    false    3    296            E           0    0 )   testimonial_plugin_testimonialitem_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.testimonial_plugin_testimonialitem_id_seq OWNED BY public.testimonial_plugin_testimonialitem.id;
            public       postgres    false    297            `	           2604    16794    about_me_plugin_aboutme id    DEFAULT     �   ALTER TABLE ONLY public.about_me_plugin_aboutme ALTER COLUMN id SET DEFAULT nextval('public.about_me_plugin_aboutme_id_seq'::regclass);
 I   ALTER TABLE public.about_me_plugin_aboutme ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185            a	           2604    16795    about_me_plugin_skill id    DEFAULT     �   ALTER TABLE ONLY public.about_me_plugin_skill ALTER COLUMN id SET DEFAULT nextval('public.about_me_plugin_skill_id_seq'::regclass);
 G   ALTER TABLE public.about_me_plugin_skill ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187            b	           2604    16796    about_me_plugin_statistic id    DEFAULT     �   ALTER TABLE ONLY public.about_me_plugin_statistic ALTER COLUMN id SET DEFAULT nextval('public.about_me_plugin_statistic_id_seq'::regclass);
 K   ALTER TABLE public.about_me_plugin_statistic ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189            c	           2604    16797    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192            d	           2604    16798    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    194            e	           2604    16799    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            f	           2604    16800    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    198            g	           2604    16801    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199            h	           2604    16802    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            i	           2604    16803    cms_cmsplugin id    DEFAULT     t   ALTER TABLE ONLY public.cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('public.cms_cmsplugin_id_seq'::regclass);
 ?   ALTER TABLE public.cms_cmsplugin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205            m	           2604    16804    cms_globalpagepermission id    DEFAULT     �   ALTER TABLE ONLY public.cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_id_seq'::regclass);
 J   ALTER TABLE public.cms_globalpagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207            n	           2604    16805 !   cms_globalpagepermission_sites id    DEFAULT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_sites_id_seq'::regclass);
 P   ALTER TABLE public.cms_globalpagepermission_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209            o	           2604    16806    cms_page id    DEFAULT     j   ALTER TABLE ONLY public.cms_page ALTER COLUMN id SET DEFAULT nextval('public.cms_page_id_seq'::regclass);
 :   ALTER TABLE public.cms_page ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211            p	           2604    16807    cms_page_placeholders id    DEFAULT     �   ALTER TABLE ONLY public.cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('public.cms_page_placeholders_id_seq'::regclass);
 G   ALTER TABLE public.cms_page_placeholders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    213            q	           2604    16808    cms_pagepermission id    DEFAULT     ~   ALTER TABLE ONLY public.cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_pagepermission_id_seq'::regclass);
 D   ALTER TABLE public.cms_pagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215            r	           2604    16809    cms_placeholder id    DEFAULT     x   ALTER TABLE ONLY public.cms_placeholder ALTER COLUMN id SET DEFAULT nextval('public.cms_placeholder_id_seq'::regclass);
 A   ALTER TABLE public.cms_placeholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219            t	           2604    16810    cms_staticplaceholder id    DEFAULT     �   ALTER TABLE ONLY public.cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('public.cms_staticplaceholder_id_seq'::regclass);
 G   ALTER TABLE public.cms_staticplaceholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222            u	           2604    16811    cms_title id    DEFAULT     l   ALTER TABLE ONLY public.cms_title ALTER COLUMN id SET DEFAULT nextval('public.cms_title_id_seq'::regclass);
 ;   ALTER TABLE public.cms_title ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            v	           2604    16812    cms_treenode id    DEFAULT     r   ALTER TABLE ONLY public.cms_treenode ALTER COLUMN id SET DEFAULT nextval('public.cms_treenode_id_seq'::regclass);
 >   ALTER TABLE public.cms_treenode ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            y	           2604    16813    cms_urlconfrevision id    DEFAULT     �   ALTER TABLE ONLY public.cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('public.cms_urlconfrevision_id_seq'::regclass);
 E   ALTER TABLE public.cms_urlconfrevision ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            z	           2604    16814    cms_usersettings id    DEFAULT     z   ALTER TABLE ONLY public.cms_usersettings ALTER COLUMN id SET DEFAULT nextval('public.cms_usersettings_id_seq'::regclass);
 B   ALTER TABLE public.cms_usersettings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            {	           2604    16815    contact_me_plugin_message id    DEFAULT     �   ALTER TABLE ONLY public.contact_me_plugin_message ALTER COLUMN id SET DEFAULT nextval('public.contact_me_plugin_message_id_seq'::regclass);
 K   ALTER TABLE public.contact_me_plugin_message ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    235            |	           2604    16816    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    237            ~	           2604    16817    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239            	           2604    16818    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241            �	           2604    16819    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244            �	           2604    16820    djangocms_snippet_snippet id    DEFAULT     �   ALTER TABLE ONLY public.djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('public.djangocms_snippet_snippet_id_seq'::regclass);
 K   ALTER TABLE public.djangocms_snippet_snippet ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    255            �	           2604    16821    easy_thumbnails_source id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    263    262            �	           2604    16822    easy_thumbnails_thumbnail id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    265    264            �	           2604    16823 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    267    266            �	           2604    16824    filer_clipboard id    DEFAULT     x   ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    269    268            �	           2604    16825    filer_clipboarditem id    DEFAULT     �   ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    271    270            �	           2604    16826    filer_file id    DEFAULT     n   ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    273    272            �	           2604    16827    filer_folder id    DEFAULT     r   ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    275    274            �	           2604    16828    filer_folderpermission id    DEFAULT     �   ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    277    276            �	           2604    16829    filer_thumbnailoption id    DEFAULT     �   ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    280    279            �	           2604    16830    menus_cachekey id    DEFAULT     v   ALTER TABLE ONLY public.menus_cachekey ALTER COLUMN id SET DEFAULT nextval('public.menus_cachekey_id_seq'::regclass);
 @   ALTER TABLE public.menus_cachekey ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    284    283            �	           2604    16831    portfolio_app_mediaasset id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_mediaasset ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_mediaasset_id_seq'::regclass);
 J   ALTER TABLE public.portfolio_app_mediaasset ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    287    286            �	           2604    16832    portfolio_app_project_tags id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_project_tags ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_project_tags_id_seq'::regclass);
 L   ALTER TABLE public.portfolio_app_project_tags ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    290    289            �	           2604    16833    services_plugin_serviceitem id    DEFAULT     �   ALTER TABLE ONLY public.services_plugin_serviceitem ALTER COLUMN id SET DEFAULT nextval('public.services_plugin_serviceitem_id_seq'::regclass);
 M   ALTER TABLE public.services_plugin_serviceitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    293    292            �	           2604    16834 %   testimonial_plugin_testimonialitem id    DEFAULT     �   ALTER TABLE ONLY public.testimonial_plugin_testimonialitem ALTER COLUMN id SET DEFAULT nextval('public.testimonial_plugin_testimonialitem_id_seq'::regclass);
 T   ALTER TABLE public.testimonial_plugin_testimonialitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    297    296            �          0    16385    about_me_plugin_aboutme 
   TABLE DATA               a   COPY public.about_me_plugin_aboutme (id, title, description, created_at, updated_at) FROM stdin;
    public       postgres    false    185   �      F           0    0    about_me_plugin_aboutme_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.about_me_plugin_aboutme_id_seq', 1, true);
            public       postgres    false    186            �          0    16393    about_me_plugin_skill 
   TABLE DATA               m   COPY public.about_me_plugin_skill (id, name, percentage, about_me_id_id, created_at, updated_at) FROM stdin;
    public       postgres    false    187   ��      G           0    0    about_me_plugin_skill_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.about_me_plugin_skill_id_seq', 4, true);
            public       postgres    false    188            �          0    16398    about_me_plugin_statistic 
   TABLE DATA               z   COPY public.about_me_plugin_statistic (id, title, statistic, about_me_id_id, created_at, updated_at, fa_icon) FROM stdin;
    public       postgres    false    189   ��      H           0    0     about_me_plugin_statistic_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.about_me_plugin_statistic_id_seq', 4, true);
            public       postgres    false    190            �          0    16403    aldryn_style_style 
   TABLE DATA               �   COPY public.aldryn_style_style (label, cmsplugin_ptr_id, class_name, id_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_class_names) FROM stdin;
    public       postgres    false    191   `�      �          0    16409 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    192   }�      I           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    193            �          0    16414    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   ��      J           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    195            �          0    16419    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    196   ��      K           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 200, true);
            public       postgres    false    197            �          0    16424 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    198   '�      �          0    16430    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    199   П      L           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    200            M           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
            public       postgres    false    201            �          0    16437    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    202   �      N           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    203            �          0    16442    cms_aliaspluginmodel 
   TABLE DATA               a   COPY public.cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
    public       postgres    false    204   
�      �          0    16445    cms_cmsplugin 
   TABLE DATA               �   COPY public.cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
    public       postgres    false    205   '�      O           0    0    cms_cmsplugin_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cms_cmsplugin_id_seq', 90, true);
            public       postgres    false    206            �          0    16453    cms_globalpagepermission 
   TABLE DATA               �   COPY public.cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
    public       postgres    false    207   �      P           0    0    cms_globalpagepermission_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.cms_globalpagepermission_id_seq', 1, false);
            public       postgres    false    208            �          0    16458    cms_globalpagepermission_sites 
   TABLE DATA               ^   COPY public.cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
    public       postgres    false    209   �      Q           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.cms_globalpagepermission_sites_id_seq', 1, false);
            public       postgres    false    210            �          0    16463    cms_page 
   TABLE DATA               �  COPY public.cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
    public       postgres    false    211   (�      R           0    0    cms_page_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cms_page_id_seq', 8, true);
            public       postgres    false    212            �          0    16471    cms_page_placeholders 
   TABLE DATA               L   COPY public.cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
    public       postgres    false    213   ��      S           0    0    cms_page_placeholders_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cms_page_placeholders_id_seq', 34, true);
            public       postgres    false    214            �          0    16476    cms_pagepermission 
   TABLE DATA               �   COPY public.cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
    public       postgres    false    215   �      T           0    0    cms_pagepermission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.cms_pagepermission_id_seq', 1, false);
            public       postgres    false    216            �          0    16481    cms_pageuser 
   TABLE DATA               B   COPY public.cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    217   <�      �          0    16484    cms_pageusergroup 
   TABLE DATA               H   COPY public.cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    218   Y�      �          0    16487    cms_placeholder 
   TABLE DATA               B   COPY public.cms_placeholder (id, slot, default_width) FROM stdin;
    public       postgres    false    219   v�      U           0    0    cms_placeholder_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cms_placeholder_id_seq', 35, true);
            public       postgres    false    220            �          0    16493    cms_placeholderreference 
   TABLE DATA               ^   COPY public.cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
    public       postgres    false    221   C�      �          0    16496    cms_staticplaceholder 
   TABLE DATA               u   COPY public.cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
    public       postgres    false    222   `�      V           0    0    cms_staticplaceholder_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cms_staticplaceholder_id_seq', 1, false);
            public       postgres    false    223            �          0    16504 	   cms_title 
   TABLE DATA               �   COPY public.cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
    public       postgres    false    224   }�      W           0    0    cms_title_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cms_title_id_seq', 8, true);
            public       postgres    false    225            �          0    16512    cms_treenode 
   TABLE DATA               U   COPY public.cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
    public       postgres    false    226   ^�      X           0    0    cms_treenode_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cms_treenode_id_seq', 4, true);
            public       postgres    false    227            �          0    16519    cms_urlconfrevision 
   TABLE DATA               ;   COPY public.cms_urlconfrevision (id, revision) FROM stdin;
    public       postgres    false    228   ��      Y           0    0    cms_urlconfrevision_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cms_urlconfrevision_id_seq', 1, false);
            public       postgres    false    229            �          0    16524    cms_usersettings 
   TABLE DATA               O   COPY public.cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
    public       postgres    false    230   ߨ      Z           0    0    cms_usersettings_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cms_usersettings_id_seq', 1, true);
            public       postgres    false    231            �          0    16529 #   contact_me_plugin_callactionsection 
   TABLE DATA               x   COPY public.contact_me_plugin_callactionsection (cmsplugin_ptr_id, title, message, image, background_image) FROM stdin;
    public       postgres    false    232   �      �          0    16535    contact_me_plugin_contactme 
   TABLE DATA               ^   COPY public.contact_me_plugin_contactme (cmsplugin_ptr_id, phone, address, email) FROM stdin;
    public       postgres    false    233   ��      �          0    16541    contact_me_plugin_googlemap 
   TABLE DATA               P   COPY public.contact_me_plugin_googlemap (cmsplugin_ptr_id, address) FROM stdin;
    public       postgres    false    234   X�      �          0    16544    contact_me_plugin_message 
   TABLE DATA               e   COPY public.contact_me_plugin_message (id, name, email, message, created_at, updated_at) FROM stdin;
    public       postgres    false    235   ��      [           0    0     contact_me_plugin_message_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.contact_me_plugin_message_id_seq', 3, true);
            public       postgres    false    236            �          0    16552    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    237   }�      \           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 123, true);
            public       postgres    false    238            �          0    16561    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    239   �      ]           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 67, true);
            public       postgres    false    240            �          0    16566    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    241   ��      ^           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 127, true);
            public       postgres    false    242            �          0    16574    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    243   ��      �          0    16580    django_site 
   TABLE DATA               7   COPY public.django_site (id, domain, name) FROM stdin;
    public       postgres    false    244   5�      _           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
            public       postgres    false    245            �          0    16585    djangocms_column_column 
   TABLE DATA               J   COPY public.djangocms_column_column (cmsplugin_ptr_id, width) FROM stdin;
    public       postgres    false    246   b�      �          0    16588    djangocms_column_multicolumns 
   TABLE DATA               I   COPY public.djangocms_column_multicolumns (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    247   �      �          0    16591    djangocms_file_file 
   TABLE DATA               �   COPY public.djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
    public       postgres    false    248   ��      �          0    16597    djangocms_file_folder 
   TABLE DATA               �   COPY public.djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
    public       postgres    false    249   ��      �          0    16603    djangocms_googlemap_googlemap 
   TABLE DATA               4  COPY public.djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
    public       postgres    false    250   ��      �          0    16610 #   djangocms_googlemap_googlemapmarker 
   TABLE DATA               �   COPY public.djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
    public       postgres    false    251   ��      �          0    16616 "   djangocms_googlemap_googlemaproute 
   TABLE DATA               w   COPY public.djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
    public       postgres    false    252   �      �          0    16622    djangocms_link_link 
   TABLE DATA               �   COPY public.djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template) FROM stdin;
    public       postgres    false    253   -�      �          0    16628    djangocms_picture_picture 
   TABLE DATA               ,  COPY public.djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template) FROM stdin;
    public       postgres    false    254   J�      �          0    16636    djangocms_snippet_snippet 
   TABLE DATA               S   COPY public.djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
    public       postgres    false    255   g�      `           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.djangocms_snippet_snippet_id_seq', 1, false);
            public       postgres    false    256            �          0    16644    djangocms_snippet_snippetptr 
   TABLE DATA               T   COPY public.djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
    public       postgres    false    257   ��      �          0    16647    djangocms_text_ckeditor_text 
   TABLE DATA               N   COPY public.djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
    public       postgres    false    258   ��      �          0    16653    djangocms_video_videoplayer 
   TABLE DATA               {   COPY public.djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template) FROM stdin;
    public       postgres    false    259   ��      �          0    16659    djangocms_video_videosource 
   TABLE DATA               �   COPY public.djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
    public       postgres    false    260   ��      �          0    16665    djangocms_video_videotrack 
   TABLE DATA               p   COPY public.djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
    public       postgres    false    261   ��      �          0    16671    easy_thumbnails_source 
   TABLE DATA               R   COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    262   �      a           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 1, false);
            public       postgres    false    263            �          0    16676    easy_thumbnails_thumbnail 
   TABLE DATA               `   COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    264   2�      b           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 1, false);
            public       postgres    false    265            �          0    16681 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               ^   COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    266   O�      c           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    267            �          0    16688    filer_clipboard 
   TABLE DATA               6   COPY public.filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    268   l�      d           0    0    filer_clipboard_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, false);
            public       postgres    false    269            �          0    16693    filer_clipboarditem 
   TABLE DATA               H   COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    270   ��      e           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    271            �          0    16698 
   filer_file 
   TABLE DATA               �   COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    272   ��      f           0    0    filer_file_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.filer_file_id_seq', 1, false);
            public       postgres    false    273            �          0    16706    filer_folder 
   TABLE DATA               �   COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    274   ��      g           0    0    filer_folder_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, false);
            public       postgres    false    275            �          0    16715    filer_folderpermission 
   TABLE DATA               �   COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    276   ��      h           0    0    filer_folderpermission_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);
            public       postgres    false    277                      0    16720    filer_image 
   TABLE DATA               �   COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    278   ��                0    16726    filer_thumbnailoption 
   TABLE DATA               W   COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    279   �      i           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    280                      0    16731    hero_area_plugin_heroarea 
   TABLE DATA               �   COPY public.hero_area_plugin_heroarea (cmsplugin_ptr_id, intro_title, title, background_image, youtube_introduction) FROM stdin;
    public       postgres    false    281   7�                0    16737    hero_area_plugin_shortheroarea 
   TABLE DATA               v   COPY public.hero_area_plugin_shortheroarea (cmsplugin_ptr_id, page_title, page_message, background_image) FROM stdin;
    public       postgres    false    282   ��                0    16740    menus_cachekey 
   TABLE DATA               A   COPY public.menus_cachekey (id, language, site, key) FROM stdin;
    public       postgres    false    283   h�      j           0    0    menus_cachekey_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.menus_cachekey_id_seq', 45, true);
            public       postgres    false    284                      0    16749    portfolio_app_latestworksection 
   TABLE DATA               T   COPY public.portfolio_app_latestworksection (cmsplugin_ptr_id, message) FROM stdin;
    public       postgres    false    285   ��      	          0    16752    portfolio_app_mediaasset 
   TABLE DATA               k   COPY public.portfolio_app_mediaasset (id, name, type, media_asset, youtube_url, project_id_id) FROM stdin;
    public       postgres    false    286   ��      k           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.portfolio_app_mediaasset_id_seq', 39, true);
            public       postgres    false    287                      0    16758    portfolio_app_project 
   TABLE DATA               �   COPY public.portfolio_app_project (cmsplugin_ptr_id, slug, title, sub_title, short_description, description, skills, roles, client, length, demo_url, youtube_embed_url, top_image, created_at, updated_at, android_demo_url, ios_demo_url) FROM stdin;
    public       postgres    false    288   �                0    16764    portfolio_app_project_tags 
   TABLE DATA               L   COPY public.portfolio_app_project_tags (id, project_id, tag_id) FROM stdin;
    public       postgres    false    289   ��      l           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.portfolio_app_project_tags_id_seq', 15, true);
            public       postgres    false    290                      0    16769    portfolio_app_tag 
   TABLE DATA               C   COPY public.portfolio_app_tag (cmsplugin_ptr_id, name) FROM stdin;
    public       postgres    false    291   ��                0    16772    services_plugin_serviceitem 
   TABLE DATA               t   COPY public.services_plugin_serviceitem (id, title, content, icon_class_name, services_component_id_id) FROM stdin;
    public       postgres    false    292   %�      m           0    0 "   services_plugin_serviceitem_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.services_plugin_serviceitem_id_seq', 37, true);
            public       postgres    false    293                      0    16780 !   services_plugin_servicescomponent 
   TABLE DATA               M   COPY public.services_plugin_servicescomponent (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    294   ��                0    16783 '   testimonial_plugin_testimonialcomponent 
   TABLE DATA               e   COPY public.testimonial_plugin_testimonialcomponent (cmsplugin_ptr_id, background_image) FROM stdin;
    public       postgres    false    295   ��                0    16786 "   testimonial_plugin_testimonialitem 
   TABLE DATA               b   COPY public.testimonial_plugin_testimonialitem (id, name, content, testimonial_id_id) FROM stdin;
    public       postgres    false    296   /�      n           0    0 )   testimonial_plugin_testimonialitem_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.testimonial_plugin_testimonialitem_id_seq', 16, true);
            public       postgres    false    297            �	           2606    16838 4   about_me_plugin_aboutme about_me_plugin_aboutme_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.about_me_plugin_aboutme
    ADD CONSTRAINT about_me_plugin_aboutme_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.about_me_plugin_aboutme DROP CONSTRAINT about_me_plugin_aboutme_pkey;
       public         postgres    false    185    185            �	           2606    16840 0   about_me_plugin_skill about_me_plugin_skill_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.about_me_plugin_skill
    ADD CONSTRAINT about_me_plugin_skill_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_me_plugin_skill DROP CONSTRAINT about_me_plugin_skill_pkey;
       public         postgres    false    187    187            �	           2606    16842 8   about_me_plugin_statistic about_me_plugin_statistic_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.about_me_plugin_statistic
    ADD CONSTRAINT about_me_plugin_statistic_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.about_me_plugin_statistic DROP CONSTRAINT about_me_plugin_statistic_pkey;
       public         postgres    false    189    189            �	           2606    16844 *   aldryn_style_style aldryn_style_style_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_pkey;
       public         postgres    false    191    191            �	           2606    16846    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192    192            �	           2606    16848 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194    194            �	           2606    16850 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194    194            �	           2606    16852    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192    192            �	           2606    16854 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    196    196    196            �	           2606    16856 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    196    196            �	           2606    16858 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    199    199            �	           2606    16860 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    199    199    199            �	           2606    16862    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    198    198            �	           2606    16864 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    202    202            �	           2606    16866 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    202    202    202            �	           2606    16868     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    198    198            �	           2606    16870 .   cms_aliaspluginmodel cms_aliaspluginmodel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_pkey;
       public         postgres    false    204    204            �	           2606    16872 .   cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);
 X   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_path_4917bb44_uniq;
       public         postgres    false    205    205            �	           2606    16874     cms_cmsplugin cms_cmsplugin_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_pkey;
       public         postgres    false    205    205            �	           2606    16876 ^   cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq;
       public         postgres    false    209    209    209            �	           2606    16878 6   cms_globalpagepermission cms_globalpagepermission_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_pkey;
       public         postgres    false    207    207            �	           2606    16880 B   cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_sites_pkey;
       public         postgres    false    209    209            �	           2606    16882 :   cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);
 d   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq;
       public         postgres    false    211    211    211            �	           2606    16884    cms_page cms_page_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_pkey;
       public         postgres    false    211    211            �	           2606    16886 P   cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);
 z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq;
       public         postgres    false    213    213    213            �	           2606    16888 0   cms_page_placeholders cms_page_placeholders_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_pkey;
       public         postgres    false    213    213            �	           2606    16890 )   cms_page cms_page_publisher_public_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);
 S   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_key;
       public         postgres    false    211    211            �	           2606    16892 *   cms_pagepermission cms_pagepermission_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_pkey;
       public         postgres    false    215    215             
           2606    16894    cms_pageuser cms_pageuser_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);
 H   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_pkey;
       public         postgres    false    217    217            
           2606    16896 (   cms_pageusergroup cms_pageusergroup_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);
 R   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_pkey;
       public         postgres    false    218    218            
           2606    16898 $   cms_placeholder cms_placeholder_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cms_placeholder DROP CONSTRAINT cms_placeholder_pkey;
       public         postgres    false    219    219            	
           2606    16900 6   cms_placeholderreference cms_placeholderreference_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderreference_pkey;
       public         postgres    false    221    221            
           2606    16902 F   cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);
 p   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq;
       public         postgres    false    222    222    222            
           2606    16904 0   cms_staticplaceholder cms_staticplaceholder_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_pkey;
       public         postgres    false    222    222            
           2606    16906 2   cms_title cms_title_language_page_id_61aaf084_uniq 
   CONSTRAINT     z   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);
 \   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_language_page_id_61aaf084_uniq;
       public         postgres    false    224    224    224            
           2606    16908    cms_title cms_title_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_pkey;
       public         postgres    false    224    224            
           2606    16910 +   cms_title cms_title_publisher_public_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);
 U   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_key;
       public         postgres    false    224    224            %
           2606    16912 "   cms_treenode cms_treenode_path_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);
 L   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_path_key;
       public         postgres    false    226    226            '
           2606    16914    cms_treenode cms_treenode_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_pkey;
       public         postgres    false    226    226            *
           2606    16916 ,   cms_urlconfrevision cms_urlconfrevision_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cms_urlconfrevision DROP CONSTRAINT cms_urlconfrevision_pkey;
       public         postgres    false    228    228            -
           2606    16918 &   cms_usersettings cms_usersettings_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_pkey;
       public         postgres    false    230    230            /
           2606    16920 -   cms_usersettings cms_usersettings_user_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_key;
       public         postgres    false    230    230            1
           2606    16922 L   contact_me_plugin_callactionsection contact_me_plugin_callactionsection_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_callactionsection
    ADD CONSTRAINT contact_me_plugin_callactionsection_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.contact_me_plugin_callactionsection DROP CONSTRAINT contact_me_plugin_callactionsection_pkey;
       public         postgres    false    232    232            3
           2606    16924 <   contact_me_plugin_contactme contact_me_plugin_contactme_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_contactme
    ADD CONSTRAINT contact_me_plugin_contactme_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.contact_me_plugin_contactme DROP CONSTRAINT contact_me_plugin_contactme_pkey;
       public         postgres    false    233    233            5
           2606    16926 <   contact_me_plugin_googlemap contact_me_plugin_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_googlemap
    ADD CONSTRAINT contact_me_plugin_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.contact_me_plugin_googlemap DROP CONSTRAINT contact_me_plugin_googlemap_pkey;
       public         postgres    false    234    234            7
           2606    16928 8   contact_me_plugin_message contact_me_plugin_message_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.contact_me_plugin_message
    ADD CONSTRAINT contact_me_plugin_message_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.contact_me_plugin_message DROP CONSTRAINT contact_me_plugin_message_pkey;
       public         postgres    false    235    235            :
           2606    16930 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    237    237            =
           2606    16932 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    239    239    239            ?
           2606    16934 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    239    239            A
           2606    16936 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    241    241            D
           2606    16938 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    243    243            H
           2606    16940 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         postgres    false    244    244            J
           2606    16942    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    244    244            L
           2606    16944 4   djangocms_column_column djangocms_column_column_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_column_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_column_pkey;
       public         postgres    false    246    246            N
           2606    16946 @   djangocms_column_multicolumns djangocms_column_multicolumns_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_multicolumns_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_multicolumns_pkey;
       public         postgres    false    247    247            Q
           2606    16948 ,   djangocms_file_file djangocms_file_file_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_pkey;
       public         postgres    false    248    248            T
           2606    16950 0   djangocms_file_folder djangocms_file_folder_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_pkey;
       public         postgres    false    249    249            V
           2606    16952 @   djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap_googlemap_pkey;
       public         postgres    false    250    250            Y
           2606    16954 L   djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap_googlemapmarker_pkey;
       public         postgres    false    251    251            [
           2606    16956 J   djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);
 t   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap_googlemaproute_pkey;
       public         postgres    false    252    252            ^
           2606    16958 ,   djangocms_link_link djangocms_link_link_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_pkey;
       public         postgres    false    253    253            b
           2606    16960 8   djangocms_picture_picture djangocms_picture_picture_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_pkey;
       public         postgres    false    254    254            f
           2606    16962 <   djangocms_snippet_snippet djangocms_snippet_snippet_name_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_name_key;
       public         postgres    false    255    255            h
           2606    16964 8   djangocms_snippet_snippet djangocms_snippet_snippet_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_pkey;
       public         postgres    false    255    255            k
           2606    16966 F   djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);
 p   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq;
       public         postgres    false    255    255            m
           2606    16968 >   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_pkey;
       public         postgres    false    257    257            p
           2606    16970 >   djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckeditor_text_pkey;
       public         postgres    false    258    258            r
           2606    16972 6   djangocms_video_videoplayer djangocms_video_video_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_video_pkey;
       public         postgres    false    259    259            u
           2606    16974 <   djangocms_video_videosource djangocms_video_videosource_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_videosource_pkey;
       public         postgres    false    260    260            x
           2606    16976 :   djangocms_video_videotrack djangocms_video_videotrack_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);
 d   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_pkey;
       public         postgres    false    261    261            }
           2606    16978 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    262    262            �
           2606    16980 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    262    262    262            �
           2606    16982 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    264    264    264    264            �
           2606    16984 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    264    264            �
           2606    16986 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    266    266            �
           2606    16988 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    266    266            �
           2606    16990 $   filer_clipboard filer_clipboard_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         postgres    false    268    268            �
           2606    16992 ,   filer_clipboarditem filer_clipboarditem_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         postgres    false    270    270            �
           2606    16994    filer_file filer_file_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         postgres    false    272    272            �
           2606    16996 6   filer_folder filer_folder_parent_id_name_bc773258_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);
 `   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_name_bc773258_uniq;
       public         postgres    false    274    274    274            �
           2606    16998    filer_folder filer_folder_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         postgres    false    274    274            �
           2606    17000 2   filer_folderpermission filer_folderpermission_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         postgres    false    276    276            �
           2606    17002    filer_image filer_image_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         postgres    false    278    278            �
           2606    17004 0   filer_thumbnailoption filer_thumbnailoption_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         postgres    false    279    279            �
           2606    17006 8   hero_area_plugin_heroarea hero_area_plugin_heroarea_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_plugin_heroarea
    ADD CONSTRAINT hero_area_plugin_heroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.hero_area_plugin_heroarea DROP CONSTRAINT hero_area_plugin_heroarea_pkey;
       public         postgres    false    281    281            �
           2606    17008 B   hero_area_plugin_shortheroarea hero_area_plugin_shortheroarea_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_plugin_shortheroarea
    ADD CONSTRAINT hero_area_plugin_shortheroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 l   ALTER TABLE ONLY public.hero_area_plugin_shortheroarea DROP CONSTRAINT hero_area_plugin_shortheroarea_pkey;
       public         postgres    false    282    282            �
           2606    17010 "   menus_cachekey menus_cachekey_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.menus_cachekey DROP CONSTRAINT menus_cachekey_pkey;
       public         postgres    false    283    283            �
           2606    17012 D   portfolio_app_latestworksection portfolio_app_latestworksection_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_latestworksection
    ADD CONSTRAINT portfolio_app_latestworksection_pkey PRIMARY KEY (cmsplugin_ptr_id);
 n   ALTER TABLE ONLY public.portfolio_app_latestworksection DROP CONSTRAINT portfolio_app_latestworksection_pkey;
       public         postgres    false    285    285            �
           2606    17014 6   portfolio_app_mediaasset portfolio_app_mediaasset_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaasset_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaasset_pkey;
       public         postgres    false    286    286            �
           2606    17016 0   portfolio_app_project portfolio_app_project_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_project_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_project_pkey;
       public         postgres    false    288    288            �
           2606    17018 :   portfolio_app_project_tags portfolio_app_project_tags_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_pkey;
       public         postgres    false    289    289            �
           2606    17020 U   portfolio_app_project_tags portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq UNIQUE (project_id, tag_id);
    ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq;
       public         postgres    false    289    289    289            �
           2606    17022 (   portfolio_app_tag portfolio_app_tag_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_pkey PRIMARY KEY (cmsplugin_ptr_id);
 R   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_pkey;
       public         postgres    false    291    291            �
           2606    17024 <   services_plugin_serviceitem services_plugin_serviceitem_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.services_plugin_serviceitem
    ADD CONSTRAINT services_plugin_serviceitem_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.services_plugin_serviceitem DROP CONSTRAINT services_plugin_serviceitem_pkey;
       public         postgres    false    292    292            �
           2606    17026 H   services_plugin_servicescomponent services_plugin_servicescomponent_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.services_plugin_servicescomponent
    ADD CONSTRAINT services_plugin_servicescomponent_pkey PRIMARY KEY (cmsplugin_ptr_id);
 r   ALTER TABLE ONLY public.services_plugin_servicescomponent DROP CONSTRAINT services_plugin_servicescomponent_pkey;
       public         postgres    false    294    294            �
           2606    17028 T   testimonial_plugin_testimonialcomponent testimonial_plugin_testimonialcomponent_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.testimonial_plugin_testimonialcomponent
    ADD CONSTRAINT testimonial_plugin_testimonialcomponent_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ~   ALTER TABLE ONLY public.testimonial_plugin_testimonialcomponent DROP CONSTRAINT testimonial_plugin_testimonialcomponent_pkey;
       public         postgres    false    295    295            �
           2606    17030 J   testimonial_plugin_testimonialitem testimonial_plugin_testimonialitem_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.testimonial_plugin_testimonialitem
    ADD CONSTRAINT testimonial_plugin_testimonialitem_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.testimonial_plugin_testimonialitem DROP CONSTRAINT testimonial_plugin_testimonialitem_pkey;
       public         postgres    false    296    296            �	           1259    17031 -   about_me_plugin_skill_about_me_id_id_ca9ce902    INDEX     y   CREATE INDEX about_me_plugin_skill_about_me_id_id_ca9ce902 ON public.about_me_plugin_skill USING btree (about_me_id_id);
 A   DROP INDEX public.about_me_plugin_skill_about_me_id_id_ca9ce902;
       public         postgres    false    187            �	           1259    17032 1   about_me_plugin_statistic_about_me_id_id_73d9f336    INDEX     �   CREATE INDEX about_me_plugin_statistic_about_me_id_id_73d9f336 ON public.about_me_plugin_statistic USING btree (about_me_id_id);
 E   DROP INDEX public.about_me_plugin_statistic_about_me_id_id_73d9f336;
       public         postgres    false    189            �	           1259    17033    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            �	           1259    17034 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            �	           1259    17035 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            �	           1259    17036 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    196            �	           1259    17037 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    199            �	           1259    17038 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    199            �	           1259    17039 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    202            �	           1259    17040 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    202            �	           1259    17041     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    198            �	           1259    17042 2   cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a    INDEX     �   CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON public.cms_aliaspluginmodel USING btree (alias_placeholder_id);
 F   DROP INDEX public.cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a;
       public         postgres    false    204            �	           1259    17043 '   cms_aliaspluginmodel_plugin_id_9867676e    INDEX     m   CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON public.cms_aliaspluginmodel USING btree (plugin_id);
 ;   DROP INDEX public.cms_aliaspluginmodel_plugin_id_9867676e;
       public         postgres    false    204            �	           1259    17044    cms_cmsplugin_language_bbea8a48    INDEX     ]   CREATE INDEX cms_cmsplugin_language_bbea8a48 ON public.cms_cmsplugin USING btree (language);
 3   DROP INDEX public.cms_cmsplugin_language_bbea8a48;
       public         postgres    false    205            �	           1259    17045 $   cms_cmsplugin_language_bbea8a48_like    INDEX     v   CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON public.cms_cmsplugin USING btree (language varchar_pattern_ops);
 8   DROP INDEX public.cms_cmsplugin_language_bbea8a48_like;
       public         postgres    false    205            �	           1259    17046     cms_cmsplugin_parent_id_fd3bd9dd    INDEX     _   CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON public.cms_cmsplugin USING btree (parent_id);
 4   DROP INDEX public.cms_cmsplugin_parent_id_fd3bd9dd;
       public         postgres    false    205            �	           1259    17047     cms_cmsplugin_path_4917bb44_like    INDEX     n   CREATE INDEX cms_cmsplugin_path_4917bb44_like ON public.cms_cmsplugin USING btree (path varchar_pattern_ops);
 4   DROP INDEX public.cms_cmsplugin_path_4917bb44_like;
       public         postgres    false    205            �	           1259    17048 %   cms_cmsplugin_placeholder_id_0bfa3b26    INDEX     i   CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON public.cms_cmsplugin USING btree (placeholder_id);
 9   DROP INDEX public.cms_cmsplugin_placeholder_id_0bfa3b26;
       public         postgres    false    205            �	           1259    17049 "   cms_cmsplugin_plugin_type_94e96ebf    INDEX     c   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON public.cms_cmsplugin USING btree (plugin_type);
 6   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf;
       public         postgres    false    205            �	           1259    17050 '   cms_cmsplugin_plugin_type_94e96ebf_like    INDEX     |   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON public.cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);
 ;   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf_like;
       public         postgres    false    205            �	           1259    17051 *   cms_globalpagepermission_group_id_991b4733    INDEX     s   CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON public.cms_globalpagepermission USING btree (group_id);
 >   DROP INDEX public.cms_globalpagepermission_group_id_991b4733;
       public         postgres    false    207            �	           1259    17052 ?   cms_globalpagepermission_sites_globalpagepermission_id_46bd2681    INDEX     �   CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON public.cms_globalpagepermission_sites USING btree (globalpagepermission_id);
 S   DROP INDEX public.cms_globalpagepermission_sites_globalpagepermission_id_46bd2681;
       public         postgres    false    209            �	           1259    17053 /   cms_globalpagepermission_sites_site_id_00460b53    INDEX     }   CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON public.cms_globalpagepermission_sites USING btree (site_id);
 C   DROP INDEX public.cms_globalpagepermission_sites_site_id_00460b53;
       public         postgres    false    209            �	           1259    17054 )   cms_globalpagepermission_user_id_a227cee1    INDEX     q   CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON public.cms_globalpagepermission USING btree (user_id);
 =   DROP INDEX public.cms_globalpagepermission_user_id_a227cee1;
       public         postgres    false    207            �	           1259    17055 "   cms_page_application_urls_9ef47497    INDEX     c   CREATE INDEX cms_page_application_urls_9ef47497 ON public.cms_page USING btree (application_urls);
 6   DROP INDEX public.cms_page_application_urls_9ef47497;
       public         postgres    false    211            �	           1259    17056 '   cms_page_application_urls_9ef47497_like    INDEX     |   CREATE INDEX cms_page_application_urls_9ef47497_like ON public.cms_page USING btree (application_urls varchar_pattern_ops);
 ;   DROP INDEX public.cms_page_application_urls_9ef47497_like;
       public         postgres    false    211            �	           1259    17057    cms_page_in_navigation_01c24279    INDEX     ]   CREATE INDEX cms_page_in_navigation_01c24279 ON public.cms_page USING btree (in_navigation);
 3   DROP INDEX public.cms_page_in_navigation_01c24279;
       public         postgres    false    211            �	           1259    17058    cms_page_is_home_edadca07    INDEX     Q   CREATE INDEX cms_page_is_home_edadca07 ON public.cms_page USING btree (is_home);
 -   DROP INDEX public.cms_page_is_home_edadca07;
       public         postgres    false    211            �	           1259    17059 *   cms_page_limit_visibility_in_menu_30db6aa6    INDEX     s   CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON public.cms_page USING btree (limit_visibility_in_menu);
 >   DROP INDEX public.cms_page_limit_visibility_in_menu_30db6aa6;
       public         postgres    false    211            �	           1259    17060 &   cms_page_navigation_extenders_c24af8dd    INDEX     k   CREATE INDEX cms_page_navigation_extenders_c24af8dd ON public.cms_page USING btree (navigation_extenders);
 :   DROP INDEX public.cms_page_navigation_extenders_c24af8dd;
       public         postgres    false    211            �	           1259    17061 +   cms_page_navigation_extenders_c24af8dd_like    INDEX     �   CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON public.cms_page USING btree (navigation_extenders varchar_pattern_ops);
 ?   DROP INDEX public.cms_page_navigation_extenders_c24af8dd_like;
       public         postgres    false    211            �	           1259    17062    cms_page_node_id_c87b85a9    INDEX     Q   CREATE INDEX cms_page_node_id_c87b85a9 ON public.cms_page USING btree (node_id);
 -   DROP INDEX public.cms_page_node_id_c87b85a9;
       public         postgres    false    211            �	           1259    17063 &   cms_page_placeholders_page_id_f2ce8dec    INDEX     k   CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON public.cms_page_placeholders USING btree (page_id);
 :   DROP INDEX public.cms_page_placeholders_page_id_f2ce8dec;
       public         postgres    false    213            �	           1259    17064 -   cms_page_placeholders_placeholder_id_6b120886    INDEX     y   CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON public.cms_page_placeholders USING btree (placeholder_id);
 A   DROP INDEX public.cms_page_placeholders_placeholder_id_6b120886;
       public         postgres    false    213            �	           1259    17065 "   cms_page_publication_date_684fabf7    INDEX     c   CREATE INDEX cms_page_publication_date_684fabf7 ON public.cms_page USING btree (publication_date);
 6   DROP INDEX public.cms_page_publication_date_684fabf7;
       public         postgres    false    211            �	           1259    17066 &   cms_page_publication_end_date_12a0c46a    INDEX     k   CREATE INDEX cms_page_publication_end_date_12a0c46a ON public.cms_page USING btree (publication_end_date);
 :   DROP INDEX public.cms_page_publication_end_date_12a0c46a;
       public         postgres    false    211            �	           1259    17067 $   cms_page_publisher_is_draft_141cba60    INDEX     g   CREATE INDEX cms_page_publisher_is_draft_141cba60 ON public.cms_page USING btree (publisher_is_draft);
 8   DROP INDEX public.cms_page_publisher_is_draft_141cba60;
       public         postgres    false    211            �	           1259    17068    cms_page_reverse_id_ffc9ede2    INDEX     W   CREATE INDEX cms_page_reverse_id_ffc9ede2 ON public.cms_page USING btree (reverse_id);
 0   DROP INDEX public.cms_page_reverse_id_ffc9ede2;
       public         postgres    false    211            �	           1259    17069 !   cms_page_reverse_id_ffc9ede2_like    INDEX     p   CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON public.cms_page USING btree (reverse_id varchar_pattern_ops);
 5   DROP INDEX public.cms_page_reverse_id_ffc9ede2_like;
       public         postgres    false    211            �	           1259    17070    cms_page_soft_root_51efccbe    INDEX     U   CREATE INDEX cms_page_soft_root_51efccbe ON public.cms_page USING btree (soft_root);
 /   DROP INDEX public.cms_page_soft_root_51efccbe;
       public         postgres    false    211            �	           1259    17071 $   cms_pagepermission_group_id_af5af193    INDEX     g   CREATE INDEX cms_pagepermission_group_id_af5af193 ON public.cms_pagepermission USING btree (group_id);
 8   DROP INDEX public.cms_pagepermission_group_id_af5af193;
       public         postgres    false    215            �	           1259    17072 #   cms_pagepermission_page_id_0ae9a163    INDEX     e   CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON public.cms_pagepermission USING btree (page_id);
 7   DROP INDEX public.cms_pagepermission_page_id_0ae9a163;
       public         postgres    false    215            �	           1259    17073 #   cms_pagepermission_user_id_0c7d2b3c    INDEX     e   CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON public.cms_pagepermission USING btree (user_id);
 7   DROP INDEX public.cms_pagepermission_user_id_0c7d2b3c;
       public         postgres    false    215            �	           1259    17074 #   cms_pageuser_created_by_id_8e9fbf83    INDEX     e   CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON public.cms_pageuser USING btree (created_by_id);
 7   DROP INDEX public.cms_pageuser_created_by_id_8e9fbf83;
       public         postgres    false    217            
           1259    17075 (   cms_pageusergroup_created_by_id_7d57fa39    INDEX     o   CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON public.cms_pageusergroup USING btree (created_by_id);
 <   DROP INDEX public.cms_pageusergroup_created_by_id_7d57fa39;
       public         postgres    false    218            
           1259    17076    cms_placeholder_slot_0bc04d21    INDEX     Y   CREATE INDEX cms_placeholder_slot_0bc04d21 ON public.cms_placeholder USING btree (slot);
 1   DROP INDEX public.cms_placeholder_slot_0bc04d21;
       public         postgres    false    219            
           1259    17077 "   cms_placeholder_slot_0bc04d21_like    INDEX     r   CREATE INDEX cms_placeholder_slot_0bc04d21_like ON public.cms_placeholder USING btree (slot varchar_pattern_ops);
 6   DROP INDEX public.cms_placeholder_slot_0bc04d21_like;
       public         postgres    false    219            

           1259    17078 4   cms_placeholderreference_placeholder_ref_id_244759b1    INDEX     �   CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON public.cms_placeholderreference USING btree (placeholder_ref_id);
 H   DROP INDEX public.cms_placeholderreference_placeholder_ref_id_244759b1;
       public         postgres    false    221            
           1259    17079 '   cms_staticplaceholder_draft_id_5aee407b    INDEX     m   CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON public.cms_staticplaceholder USING btree (draft_id);
 ;   DROP INDEX public.cms_staticplaceholder_draft_id_5aee407b;
       public         postgres    false    222            
           1259    17080 (   cms_staticplaceholder_public_id_876aaa66    INDEX     o   CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON public.cms_staticplaceholder USING btree (public_id);
 <   DROP INDEX public.cms_staticplaceholder_public_id_876aaa66;
       public         postgres    false    222            
           1259    17081 &   cms_staticplaceholder_site_id_dc6a85b6    INDEX     k   CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON public.cms_staticplaceholder USING btree (site_id);
 :   DROP INDEX public.cms_staticplaceholder_site_id_dc6a85b6;
       public         postgres    false    222            
           1259    17082 $   cms_title_has_url_overwrite_ecf27bb9    INDEX     g   CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON public.cms_title USING btree (has_url_overwrite);
 8   DROP INDEX public.cms_title_has_url_overwrite_ecf27bb9;
       public         postgres    false    224            
           1259    17083    cms_title_language_50a0dfa1    INDEX     U   CREATE INDEX cms_title_language_50a0dfa1 ON public.cms_title USING btree (language);
 /   DROP INDEX public.cms_title_language_50a0dfa1;
       public         postgres    false    224            
           1259    17084     cms_title_language_50a0dfa1_like    INDEX     n   CREATE INDEX cms_title_language_50a0dfa1_like ON public.cms_title USING btree (language varchar_pattern_ops);
 4   DROP INDEX public.cms_title_language_50a0dfa1_like;
       public         postgres    false    224            
           1259    17085    cms_title_page_id_5fade2a3    INDEX     S   CREATE INDEX cms_title_page_id_5fade2a3 ON public.cms_title USING btree (page_id);
 .   DROP INDEX public.cms_title_page_id_5fade2a3;
       public         postgres    false    224            
           1259    17086    cms_title_path_c484314c    INDEX     M   CREATE INDEX cms_title_path_c484314c ON public.cms_title USING btree (path);
 +   DROP INDEX public.cms_title_path_c484314c;
       public         postgres    false    224            
           1259    17087    cms_title_path_c484314c_like    INDEX     f   CREATE INDEX cms_title_path_c484314c_like ON public.cms_title USING btree (path varchar_pattern_ops);
 0   DROP INDEX public.cms_title_path_c484314c_like;
       public         postgres    false    224            
           1259    17088 %   cms_title_publisher_is_draft_95874c88    INDEX     i   CREATE INDEX cms_title_publisher_is_draft_95874c88 ON public.cms_title USING btree (publisher_is_draft);
 9   DROP INDEX public.cms_title_publisher_is_draft_95874c88;
       public         postgres    false    224            
           1259    17089 "   cms_title_publisher_state_9a952b0f    INDEX     c   CREATE INDEX cms_title_publisher_state_9a952b0f ON public.cms_title USING btree (publisher_state);
 6   DROP INDEX public.cms_title_publisher_state_9a952b0f;
       public         postgres    false    224             
           1259    17090    cms_title_slug_4947d146    INDEX     M   CREATE INDEX cms_title_slug_4947d146 ON public.cms_title USING btree (slug);
 +   DROP INDEX public.cms_title_slug_4947d146;
       public         postgres    false    224            !
           1259    17091    cms_title_slug_4947d146_like    INDEX     f   CREATE INDEX cms_title_slug_4947d146_like ON public.cms_title USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.cms_title_slug_4947d146_like;
       public         postgres    false    224            "
           1259    17092    cms_treenode_parent_id_59bb02c4    INDEX     ]   CREATE INDEX cms_treenode_parent_id_59bb02c4 ON public.cms_treenode USING btree (parent_id);
 3   DROP INDEX public.cms_treenode_parent_id_59bb02c4;
       public         postgres    false    226            #
           1259    17093    cms_treenode_path_6eb22885_like    INDEX     l   CREATE INDEX cms_treenode_path_6eb22885_like ON public.cms_treenode USING btree (path varchar_pattern_ops);
 3   DROP INDEX public.cms_treenode_path_6eb22885_like;
       public         postgres    false    226            (
           1259    17094    cms_treenode_site_id_d3f46985    INDEX     Y   CREATE INDEX cms_treenode_site_id_d3f46985 ON public.cms_treenode USING btree (site_id);
 1   DROP INDEX public.cms_treenode_site_id_d3f46985;
       public         postgres    false    226            +
           1259    17095 &   cms_usersettings_clipboard_id_3ae17c19    INDEX     k   CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON public.cms_usersettings USING btree (clipboard_id);
 :   DROP INDEX public.cms_usersettings_clipboard_id_3ae17c19;
       public         postgres    false    230            8
           1259    17096 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    237            ;
           1259    17097 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    237            B
           1259    17098 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    243            E
           1259    17099 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    243            F
           1259    17100     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         postgres    false    244            O
           1259    17101 (   djangocms_file_file_file_src_id_74ac14a5    INDEX     o   CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON public.djangocms_file_file USING btree (file_src_id);
 <   DROP INDEX public.djangocms_file_file_file_src_id_74ac14a5;
       public         postgres    false    248            R
           1259    17102 ,   djangocms_file_folder_folder_src_id_9558406a    INDEX     w   CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON public.djangocms_file_folder USING btree (folder_src_id);
 @   DROP INDEX public.djangocms_file_folder_folder_src_id_9558406a;
       public         postgres    false    249            W
           1259    17103 4   djangocms_googlemap_googlemapmarker_icon_id_3b103213    INDEX     �   CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON public.djangocms_googlemap_googlemapmarker USING btree (icon_id);
 H   DROP INDEX public.djangocms_googlemap_googlemapmarker_icon_id_3b103213;
       public         postgres    false    251            \
           1259    17104 )   djangocms_link_link_page_link_id_adba1bc7    INDEX     u   CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON public.djangocms_link_link USING btree (internal_link_id);
 =   DROP INDEX public.djangocms_link_link_page_link_id_adba1bc7;
       public         postgres    false    253            _
           1259    17105 /   djangocms_picture_picture_page_link_id_d5c782e0    INDEX     }   CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON public.djangocms_picture_picture USING btree (link_page_id);
 C   DROP INDEX public.djangocms_picture_picture_page_link_id_d5c782e0;
       public         postgres    false    254            `
           1259    17106 -   djangocms_picture_picture_picture_id_f7d6711b    INDEX     y   CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON public.djangocms_picture_picture USING btree (picture_id);
 A   DROP INDEX public.djangocms_picture_picture_picture_id_f7d6711b;
       public         postgres    false    254            c
           1259    17107 7   djangocms_picture_picture_thumbnail_options_id_59cf80d1    INDEX     �   CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON public.djangocms_picture_picture USING btree (thumbnail_options_id);
 K   DROP INDEX public.djangocms_picture_picture_thumbnail_options_id_59cf80d1;
       public         postgres    false    254            d
           1259    17108 ,   djangocms_snippet_snippet_name_260f397b_like    INDEX     �   CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON public.djangocms_snippet_snippet USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_name_260f397b_like;
       public         postgres    false    255            i
           1259    17109 ,   djangocms_snippet_snippet_slug_bd43cd96_like    INDEX     �   CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON public.djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_slug_bd43cd96_like;
       public         postgres    false    255            n
           1259    17110 0   djangocms_snippet_snippetptr_snippet_id_56b99614    INDEX        CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON public.djangocms_snippet_snippetptr USING btree (snippet_id);
 D   DROP INDEX public.djangocms_snippet_snippetptr_snippet_id_56b99614;
       public         postgres    false    257            s
           1259    17111 .   djangocms_video_videoplayer_poster_id_07790e24    INDEX     {   CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON public.djangocms_video_videoplayer USING btree (poster_id);
 B   DROP INDEX public.djangocms_video_videoplayer_poster_id_07790e24;
       public         postgres    false    259            v
           1259    17112 3   djangocms_video_videosource_source_file_id_16f11167    INDEX     �   CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON public.djangocms_video_videosource USING btree (source_file_id);
 G   DROP INDEX public.djangocms_video_videosource_source_file_id_16f11167;
       public         postgres    false    260            y
           1259    17113 *   djangocms_video_videotrack_src_id_e5a015d8    INDEX     s   CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON public.djangocms_video_videotrack USING btree (src_id);
 >   DROP INDEX public.djangocms_video_videotrack_src_id_e5a015d8;
       public         postgres    false    261            z
           1259    17114 $   easy_thumbnails_source_name_5fe0edc6    INDEX     g   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    262            {
           1259    17115 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     �   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    262            ~
           1259    17116 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     w   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    262            
           1259    17117 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    262            �
           1259    17118 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     m   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    264            �
           1259    17119 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    264            �
           1259    17120 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     w   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    264            �
           1259    17121 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     }   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    264            �
           1259    17122 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    264            �
           1259    17123     filer_clipboard_user_id_b52ff0bc    INDEX     _   CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);
 4   DROP INDEX public.filer_clipboard_user_id_b52ff0bc;
       public         postgres    false    268            �
           1259    17124 )   filer_clipboarditem_clipboard_id_7a76518b    INDEX     q   CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);
 =   DROP INDEX public.filer_clipboarditem_clipboard_id_7a76518b;
       public         postgres    false    270            �
           1259    17125 $   filer_clipboarditem_file_id_06196f80    INDEX     g   CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);
 8   DROP INDEX public.filer_clipboarditem_file_id_06196f80;
       public         postgres    false    270            �
           1259    17126    filer_file_folder_id_af803bbb    INDEX     Y   CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);
 1   DROP INDEX public.filer_file_folder_id_af803bbb;
       public         postgres    false    272            �
           1259    17127    filer_file_owner_id_b9e32671    INDEX     W   CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);
 0   DROP INDEX public.filer_file_owner_id_b9e32671;
       public         postgres    false    272            �
           1259    17128 (   filer_file_polymorphic_ctype_id_f44903c1    INDEX     o   CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);
 <   DROP INDEX public.filer_file_polymorphic_ctype_id_f44903c1;
       public         postgres    false    272            �
           1259    17129    filer_folder_level_b631d28a    INDEX     U   CREATE INDEX filer_folder_level_b631d28a ON public.filer_folder USING btree (level);
 /   DROP INDEX public.filer_folder_level_b631d28a;
       public         postgres    false    274            �
           1259    17130    filer_folder_lft_2c2b69f1    INDEX     Q   CREATE INDEX filer_folder_lft_2c2b69f1 ON public.filer_folder USING btree (lft);
 -   DROP INDEX public.filer_folder_lft_2c2b69f1;
       public         postgres    false    274            �
           1259    17131    filer_folder_owner_id_be530fb4    INDEX     [   CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);
 2   DROP INDEX public.filer_folder_owner_id_be530fb4;
       public         postgres    false    274            �
           1259    17132    filer_folder_parent_id_308aecda    INDEX     ]   CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);
 3   DROP INDEX public.filer_folder_parent_id_308aecda;
       public         postgres    false    274            �
           1259    17133    filer_folder_rght_34946267    INDEX     S   CREATE INDEX filer_folder_rght_34946267 ON public.filer_folder USING btree (rght);
 .   DROP INDEX public.filer_folder_rght_34946267;
       public         postgres    false    274            �
           1259    17134    filer_folder_tree_id_b016223c    INDEX     Y   CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);
 1   DROP INDEX public.filer_folder_tree_id_b016223c;
       public         postgres    false    274            �
           1259    17135 )   filer_folderpermission_folder_id_5d02f1da    INDEX     q   CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);
 =   DROP INDEX public.filer_folderpermission_folder_id_5d02f1da;
       public         postgres    false    276            �
           1259    17136 (   filer_folderpermission_group_id_8901bafa    INDEX     o   CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);
 <   DROP INDEX public.filer_folderpermission_group_id_8901bafa;
       public         postgres    false    276            �
           1259    17137 '   filer_folderpermission_user_id_7673d4b6    INDEX     m   CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);
 ;   DROP INDEX public.filer_folderpermission_user_id_7673d4b6;
       public         postgres    false    276            �
           1259    17138 /   portfolio_app_mediaasset_project_id_id_2bd68af0    INDEX     }   CREATE INDEX portfolio_app_mediaasset_project_id_id_2bd68af0 ON public.portfolio_app_mediaasset USING btree (project_id_id);
 C   DROP INDEX public.portfolio_app_mediaasset_project_id_id_2bd68af0;
       public         postgres    false    286            �
           1259    17139 #   portfolio_app_project_slug_c7455a3e    INDEX     e   CREATE INDEX portfolio_app_project_slug_c7455a3e ON public.portfolio_app_project USING btree (slug);
 7   DROP INDEX public.portfolio_app_project_slug_c7455a3e;
       public         postgres    false    288            �
           1259    17140 (   portfolio_app_project_slug_c7455a3e_like    INDEX     ~   CREATE INDEX portfolio_app_project_slug_c7455a3e_like ON public.portfolio_app_project USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.portfolio_app_project_slug_c7455a3e_like;
       public         postgres    false    288            �
           1259    17141 .   portfolio_app_project_tags_project_id_74c3a22f    INDEX     {   CREATE INDEX portfolio_app_project_tags_project_id_74c3a22f ON public.portfolio_app_project_tags USING btree (project_id);
 B   DROP INDEX public.portfolio_app_project_tags_project_id_74c3a22f;
       public         postgres    false    289            �
           1259    17142 *   portfolio_app_project_tags_tag_id_023e820f    INDEX     s   CREATE INDEX portfolio_app_project_tags_tag_id_023e820f ON public.portfolio_app_project_tags USING btree (tag_id);
 >   DROP INDEX public.portfolio_app_project_tags_tag_id_023e820f;
       public         postgres    false    289            �
           1259    17143 =   services_plugin_serviceitem_services_component_id_id_10e59a18    INDEX     �   CREATE INDEX services_plugin_serviceitem_services_component_id_id_10e59a18 ON public.services_plugin_serviceitem USING btree (services_component_id_id);
 Q   DROP INDEX public.services_plugin_serviceitem_services_component_id_id_10e59a18;
       public         postgres    false    292            �
           1259    17144 =   testimonial_plugin_testimonialitem_testimonial_id_id_4052ce42    INDEX     �   CREATE INDEX testimonial_plugin_testimonialitem_testimonial_id_id_4052ce42 ON public.testimonial_plugin_testimonialitem USING btree (testimonial_id_id);
 Q   DROP INDEX public.testimonial_plugin_testimonialitem_testimonial_id_id_4052ce42;
       public         postgres    false    296            �
           2606    17145 O   about_me_plugin_skill about_me_plugin_skil_about_me_id_id_ca9ce902_fk_about_me_    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_skill
    ADD CONSTRAINT about_me_plugin_skil_about_me_id_id_ca9ce902_fk_about_me_ FOREIGN KEY (about_me_id_id) REFERENCES public.about_me_plugin_aboutme(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.about_me_plugin_skill DROP CONSTRAINT about_me_plugin_skil_about_me_id_id_ca9ce902_fk_about_me_;
       public       postgres    false    185    187    2460            �
           2606    17150 S   about_me_plugin_statistic about_me_plugin_stat_about_me_id_id_73d9f336_fk_about_me_    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_statistic
    ADD CONSTRAINT about_me_plugin_stat_about_me_id_id_73d9f336_fk_about_me_ FOREIGN KEY (about_me_id_id) REFERENCES public.about_me_plugin_aboutme(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.about_me_plugin_statistic DROP CONSTRAINT about_me_plugin_stat_about_me_id_id_73d9f336_fk_about_me_;
       public       postgres    false    185    189    2460            �
           2606    17155 L   aldryn_style_style aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl;
       public       postgres    false    205    191    2513            �
           2606    17160 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    194    196    2484            �
           2606    17165 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    194    192    2473            �
           2606    17170 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2623    196    239            �
           2606    17175 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    192    199    2473            �
           2606    17180 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    198    199    2486            �
           2606    17185 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    196    202    2484            �
           2606    17190 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    198    202    2486            �
           2606    17195 T   cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place;
       public       postgres    false    204    2565    219            �
           2606    17200 P   cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl;
       public       postgres    false    204    205    2513            �
           2606    17205 P   cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id;
       public       postgres    false    204    205    2513            �
           2606    17210 B   cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id;
       public       postgres    false    2513    205    205            �
           2606    17215 I   cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id;
       public       postgres    false    219    205    2565            �
           2606    17220 ^   cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES public.cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa;
       public       postgres    false    209    207    2519            �
           2606    17225 Q   cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si;
       public       postgres    false    2634    209    244            �
           2606    17230 T   cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id;
       public       postgres    false    192    207    2473            �
           2606    17235 E   cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk;
       public       postgres    false    207    2486    198            �
           2606    17240 5   cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id;
       public       postgres    false    226    211    2599            �
           2606    17245 O   cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place;
       public       postgres    false    213    219    2565            �
           2606    17250 K   cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id;
       public       postgres    false    213    211    2538            �
           2606    17255 =   cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id;
       public       postgres    false    211    211    2538            �
           2606    17260 H   cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id;
       public       postgres    false    215    192    2473            �
           2606    17265 E   cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id;
       public       postgres    false    215    211    2538            �
           2606    17270 9   cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk;
       public       postgres    false    215    198    2486            �
           2606    17275 3   cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk;
       public       postgres    false    217    2486    198            �
           2606    17280 1   cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk;
       public       postgres    false    217    2486    198            �
           2606    17285 =   cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk;
       public       postgres    false    218    198    2486            �
           2606    17290 J   cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id;
       public       postgres    false    2473    218    192            �
           2606    17295 T   cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl;
       public       postgres    false    205    221    2513            �
           2606    17300 V   cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place;
       public       postgres    false    219    221    2565            �
           2606    17305 S   cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id;
       public       postgres    false    219    222    2565            �
           2606    17310 T   cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id;
       public       postgres    false    219    222    2565            �
           2606    17315 N   cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id;
       public       postgres    false    2634    244    222            �
           2606    17320 3   cms_title cms_title_page_id_5fade2a3_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id;
       public       postgres    false    224    211    2538            �
           2606    17325 @   cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_title(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id;
       public       postgres    false    224    224    2587            �
           2606    17330 ?   cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id;
       public       postgres    false    226    226    2599            �
           2606    17335 <   cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id;
       public       postgres    false    2634    244    226            �
           2606    17340 M   cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id;
       public       postgres    false    2565    219    230            �
           2606    17345 B   cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id;
       public       postgres    false    230    198    2486            �
           2606    17350 _   contact_me_plugin_callactionsection contact_me_plugin_ca_cmsplugin_ptr_id_46c06be6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_callactionsection
    ADD CONSTRAINT contact_me_plugin_ca_cmsplugin_ptr_id_46c06be6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contact_me_plugin_callactionsection DROP CONSTRAINT contact_me_plugin_ca_cmsplugin_ptr_id_46c06be6_fk_cms_cmspl;
       public       postgres    false    232    2513    205            �
           2606    17355 W   contact_me_plugin_contactme contact_me_plugin_co_cmsplugin_ptr_id_c3433944_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_contactme
    ADD CONSTRAINT contact_me_plugin_co_cmsplugin_ptr_id_c3433944_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contact_me_plugin_contactme DROP CONSTRAINT contact_me_plugin_co_cmsplugin_ptr_id_c3433944_fk_cms_cmspl;
       public       postgres    false    233    2513    205            �
           2606    17360 W   contact_me_plugin_googlemap contact_me_plugin_go_cmsplugin_ptr_id_496e569a_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_googlemap
    ADD CONSTRAINT contact_me_plugin_go_cmsplugin_ptr_id_496e569a_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contact_me_plugin_googlemap DROP CONSTRAINT contact_me_plugin_go_cmsplugin_ptr_id_496e569a_fk_cms_cmspl;
       public       postgres    false    2513    205    234            �
           2606    17365 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    237    2623    239            �
           2606    17370 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    2486    198    237            �
           2606    17375 S   djangocms_column_column djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl;
       public       postgres    false    246    2513    205            �
           2606    17380 Y   djangocms_column_multicolumns djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl;
       public       postgres    false    2513    205    247            �
           2606    17385 N   djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl;
       public       postgres    false    2513    205    248                        2606    17390 M   djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id;
       public       postgres    false    2713    272    248                       2606    17395 Q   djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl;
       public       postgres    false    2513    205    249                       2606    17400 U   djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id;
       public       postgres    false    2722    274    249                       2606    17405 _   djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl;
       public       postgres    false    205    2513    251                       2606    17410 Y   djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl;
       public       postgres    false    250    205    2513                       2606    17415 ^   djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl;
       public       postgres    false    2513    252    205                       2606    17420 V   djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima;
       public       postgres    false    251    2731    278                       2606    17425 N   djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl;
       public       postgres    false    253    205    2513                       2606    17430 P   djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id;
       public       postgres    false    253    211    2538            	           2606    17435 U   djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl;
       public       postgres    false    254    205    2513            
           2606    17440 O   djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima;
       public       postgres    false    2731    278    254                       2606    17445 Y   djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu;
       public       postgres    false    254    279    2733                       2606    17450 X   djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id;
       public       postgres    false    2538    254    211                       2606    17455 X   djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl;
       public       postgres    false    205    257    2513                       2606    17460 P   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_snippet_id_56b99614_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk FOREIGN KEY (snippet_id) REFERENCES public.djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk;
       public       postgres    false    255    257    2664                       2606    17465 X   djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl;
       public       postgres    false    2513    258    205                       2606    17470 W   djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl;
       public       postgres    false    2513    259    205                       2606    17475 W   djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl;
       public       postgres    false    260    205    2513                       2606    17480 V   djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl;
       public       postgres    false    261    205    2513                       2606    17485 P   djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima;
       public       postgres    false    259    278    2731                       2606    17490 U   djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil;
       public       postgres    false    260    272    2713                       2606    17495 V   djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id;
       public       postgres    false    272    261    2713                       2606    17500 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    264    262    2685                       2606    17505 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    266    264    2695                       2606    17510 @   filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       postgres    false    268    198    2486                       2606    17515 S   filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       postgres    false    270    268    2704                       2606    17520 I   filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       postgres    false    270    272    2713                       2606    17525 ;   filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       postgres    false    272    2722    274                       2606    17530 7   filer_file filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       postgres    false    198    2486    272                       2606    17535 @   filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co;
       public       postgres    false    272    239    2623                       2606    17540 ;   filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       postgres    false    2486    274    198                       2606    17545 ?   filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       postgres    false    274    274    2722                        2606    17550 S   filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       postgres    false    274    276    2722            !           2606    17555 P   filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       postgres    false    192    276    2473            "           2606    17560 N   filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       postgres    false    198    276    2486            #           2606    17565 =   filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       postgres    false    272    278    2713            $           2606    17570 U   hero_area_plugin_heroarea hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_plugin_heroarea
    ADD CONSTRAINT hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.hero_area_plugin_heroarea DROP CONSTRAINT hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl;
       public       postgres    false    281    205    2513            %           2606    17575 Z   hero_area_plugin_shortheroarea hero_area_plugin_sho_cmsplugin_ptr_id_0110c78e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_plugin_shortheroarea
    ADD CONSTRAINT hero_area_plugin_sho_cmsplugin_ptr_id_0110c78e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.hero_area_plugin_shortheroarea DROP CONSTRAINT hero_area_plugin_sho_cmsplugin_ptr_id_0110c78e_fk_cms_cmspl;
       public       postgres    false    282    205    2513            &           2606    17580 [   portfolio_app_latestworksection portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_latestworksection
    ADD CONSTRAINT portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.portfolio_app_latestworksection DROP CONSTRAINT portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl;
       public       postgres    false    2513    285    205            '           2606    17585 Q   portfolio_app_mediaasset portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio;
       public       postgres    false    288    286    2746            (           2606    17590 Q   portfolio_app_project portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl;
       public       postgres    false    205    288    2513            )           2606    17595 P   portfolio_app_project_tags portfolio_app_projec_project_id_74c3a22f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio FOREIGN KEY (project_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio;
       public       postgres    false    288    289    2746            *           2606    17600 L   portfolio_app_project_tags portfolio_app_projec_tag_id_023e820f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio FOREIGN KEY (tag_id) REFERENCES public.portfolio_app_tag(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio;
       public       postgres    false    291    289    2756            +           2606    17605 Q   portfolio_app_tag portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id;
       public       postgres    false    291    2513    205            -           2606    17610 ]   services_plugin_servicescomponent services_plugin_serv_cmsplugin_ptr_id_1367458c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_plugin_servicescomponent
    ADD CONSTRAINT services_plugin_serv_cmsplugin_ptr_id_1367458c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.services_plugin_servicescomponent DROP CONSTRAINT services_plugin_serv_cmsplugin_ptr_id_1367458c_fk_cms_cmspl;
       public       postgres    false    205    294    2513            ,           2606    17615 [   services_plugin_serviceitem services_plugin_serv_services_component_i_10e59a18_fk_services_    FK CONSTRAINT       ALTER TABLE ONLY public.services_plugin_serviceitem
    ADD CONSTRAINT services_plugin_serv_services_component_i_10e59a18_fk_services_ FOREIGN KEY (services_component_id_id) REFERENCES public.services_plugin_servicescomponent(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.services_plugin_serviceitem DROP CONSTRAINT services_plugin_serv_services_component_i_10e59a18_fk_services_;
       public       postgres    false    2761    292    294            .           2606    17620 c   testimonial_plugin_testimonialcomponent testimonial_plugin_t_cmsplugin_ptr_id_c36413ae_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.testimonial_plugin_testimonialcomponent
    ADD CONSTRAINT testimonial_plugin_t_cmsplugin_ptr_id_c36413ae_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.testimonial_plugin_testimonialcomponent DROP CONSTRAINT testimonial_plugin_t_cmsplugin_ptr_id_c36413ae_fk_cms_cmspl;
       public       postgres    false    295    205    2513            �   �  x�UR�n�0>'O��Z,q��"iQȰ�ŰK.���Z,J���i���ۓ�R��Y&�~�t�]�O4�w��?@x��أ'XӑZ��C�c#���=T�{o;��>�h�kl�[��5�lLT'�6Nj�Xʦ�K~n@!���� z䠣�|�$TH&c�z�B�"N�ݞ򏤏�mAy�+��uf
B��<�(f4�j��x�p�T�!�� ~<�@��d��Z6t��G�>j�"}����-��4���H��nFPY���Hپ�6��k1�7pՅd�PE���&��.���A��sF����o��W�a��T�Nl%u�H�ʏh!t�Y��ߢ��Sn{<���j�U�&'����g�.j���E��y��7 g��BV�E�����`��@E� �2�����5���pI�>��D��J�`����z_Y�L>j��j�Yˡ�]��f�t5.����]������f�\.ޖ�ku6Oչ4,���M9[Iu�-���a�      �   �   x���1�0����)�Kû��L��:�8�[����~~�8(�t�?~��}=�ͮ����:��S��"7HZ�y 1���1����1m.��:t��T��XA�Mf)��|#�T����	�<3J�:UJ���\`>*��~�s�#l;:      �   �   x���=�0���W����������d�R�5�B���2���r7��=�I��ɉHC؜������i(A��_�L`V�B�)�}V��ֵ���l��a����\	S
�)`RBagl�_�>"�C���6]��?�4(��8����!�l��cR�����{]0������$$����7؞|O��R���T�      �      x������ � �      �      x������ � �      �      x������ � �      �   `  x�}��n�6���Sh�n
S7K�]8�@��L�F�I�i޾�̐3������'�����X�߇�xl�������Xuq[�Z(a
_6,��/������E)�݋��������۸m�2�J���X k�
���6���I�	��(ۆ����q���]�3���;Ot�'$�O��}�TVѸ���T'�<�B�P�u �q����2�zދ���E�:�"["UE�J`��5�:�!�7!�M��}vA��T- 2�w�δ߈A��Bw��^�(�oѹͽ����=R�dy��R�����w-z?Fs)K��C-���p\��l޶�>=��Y���M�m��l�T2g2�-�G�4F��q@֭�I����j|�+�eG��!�������A[�B�v}N��0��n��[ˮ�ZY���Q?o W{���F���l���5:�s��� Ԣ�9��	_�����*����Ӹ}`=���[_ǽ��a/����LW�n�U/��Tɪ�Ϟ��
#�����kȆ@M�tx�\F��e�����[��Pu��g͖lB��<̖o�0<\� �V���᷉�9Ē���@��JuIp��k�L��k�Nu͖7g1"���q���)F��7���bmQ���z��$M�O��M#'M�|\DB�6�j��ف&����(f'�����8y�q�� ���nd�=�P�aǞ�@��������}�߅��	�6�NB'G��8������"���d�.of��Fg$��c��e�M9��
�s�a*�Ǩ�p��ŧ��wTW`�eˎR���?��8�P��-}����fi�e����ę5�B8"z�e�˰^E�0�3�d��"���8�����s躉��!�Byn�aE���x�(ʋ���f��/�<3��j���m����E���[C�W��7��yhD���MF
{�
���q՗}Y�s�p�Ҷ9�vM�����]����˞Lv��MRV�FA�l��R64*�6�졪���ndǦ, 0l�z��Ӷ<n��0N�r��W�ߤC�/�=�ɜ
l*d���:N�d�[��*+|�w��[\@p[��e������@DU�'!�s�X0���-��W�}f:��M����DU�@b���?�����X*?A��4h�ML���Up^wg�$?�LH ����6v{L��	ӛ�+�2C��� ����'�t�j+b������^���`�7[�T�c�bn�Ty�,�p�U�:��Ÿ�*ms�OQy��צ��#�c��#����G�w���y�����_�w ��A�x�`���<��z�7�������\�܍��/�������n3nu��2�׳M��2�ڳ$�,�y�������S`8��d(�*��Ƭ��L���i޾���b��S> �K�
R���H� ��̅j�lw�B5<RWj$Փ@�*����0�0����ƫ^�ڷ�wAW��L0�!2�`�* $��x`���1�nOؤ8�<W�*h<A��x�u�|����C��hL�A�:�x
��H���{�]{c���"|�{��i��g����~�u)�U��j콡��2�$,3U�Bב%ٖ�ռ��M�Һ��f��X)�I�@2g�$�l��H̡�"�2fFl���)$i&�c
a�� 8���9N�h���S�L5�)@�K��-����P�f<����\�T<��x�<3˄���C�ûh�)�KSŜj� � �x ����ٌ��c��D�:kfh��SA ��O���},�N_vȲ�����EF��e<����'2��X�}���Ѕ�ř��C�_��IF���!}�l�M��"x~���SOlp�x� ���6�u۞��w�������#��>����9.�4�y�/�b���*H�M���
#dv�D�jG9��'�j;ʣ1Nî������Q�-�Wٚ(dV�D�g�����9~d��c�ԍ�e��'�Z�&��.ϥ:�i���|b���e�3��>�e��g=�X�J���,^*?�LZP��-c'-�O�_���`u�#䇀m��7��F~��m��5^4L\�pe~���g?���\~7@]�FGs�Qmt}&�D�#$��t�ę�y�D��oR�� �'�       �   �   x�5��
�@@���S���h�\��X	Y D�B�Ș�����-:g�Q��7e�n�-�T�+  ��G�]�ﳦ"��D>�2������09='{�k'KӗQ��Ee��
1���2� ��|��� �P����8��`~��+OJi��5�z�/5�(�      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x��WMo�H=k~E���!gni�M
�E�v��^����ZE���_*�(�e�	`@�ޛ�!)j������}wu?�]w?~v��j�q���b��]�\B��X��p��	�����-KҘ���4�� �A���@� *�J�0�m��h&�ϟ���蟾w��ߝ�G�E� �`����h��x�C�|���[�gw���S\�`*�m�dd���FNW��r]��\7]�m9?�y�K�~/Q�t�k�*�M��ϚG-�WG��	c動�u�t�<V��*B�K+כ��~�<\D[�F����%y�>�`E�5 �;��E���zD
4���l���[/��G'��-�	�œJ�j¬���)j$y %�"?���������û���7=���%#и���^#U�ҋz�9��;�%W��jR(!�K�m ��yC���µ0�����׉>��U�PAmsv�H�D�.�Di"c�ʱ�(d�1_��lQKLh[�/�.�A1N�8�/�hC��w��r!,[����Ͻ�����4v������w����a�ww���3H{�ڦdBv�ԟ�6�C��T��`����:\�Y���2j����$ 2��m0kt���#�д�� ���>RS� ����S�*��v���
q���%B�d	��XB���_��G�Z̖�؜��q�^�e�K}Wp����l��9��c-�\��6[L�Vjma
��Ճ;P"��Q�Ȝks%�`p��y�JI�������;��$Q5k���`�⁴��4�Q���;a�
��-�G�46���*���មP��Nc�\���&���(�R�ʻ��1ty�mth]����A<mE"i:���'�1hÇ ױ�'xO��'x)��-L�+�ƌ���gM ����}����|=~�i:�^�&M �gej=�9�Q��wF�7!�C�jf쳾͊vТ�D��/m��'�      �      x������ � �      �      x������ � �      �   T  x���Mk�0�s�+r5�,[�o;�Kc��(%YmRڰ�?'MYӬa�,!�^csrX���>-�&���@. ("6�� ~5�ϒ:)�%~���������S���j���w��&k�"��J��V����/<�Q�X��7m}�r��W�H@
D��0�s�-S�8�.��^,��m�V�vsR�]�&:5#@���J�!�.	q��b����h[����F@�&����n�t�|��^�D'��TFiM>���4�>d��,�W�.5��h�p�>��X��t��4�]<8�\^��=ݪ����9��'�����#+8xS8�J��������U��ʆ,�      �   �   x����D!ѳ+��6�e�c�	a
��8I���^7;2>��8�>��^/vh�5
i4�o�
ո�?�������Л�^=��;h��x�\x�������/N�"�(R��.��/�Xd����^ �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�}�[
� E�'�)Q��DW��*5��n��@p��\��ʚ����`�V�[�^C�Cw�D�1b8�W�����f��@k#��:W�.�T��Aui�E����l��Z�K�[S2扤:��b�[��)a� ���D6�[ڔ��i�6Jo	��0A����~���f��SQ<U���t���(�      �      x������ � �      �      x������ � �      �   �   x��ϱj1�Yz��!F�l���%S)d��;h�}��h�K�س�5�ÿB�]�>v��u��[`�
�8o(l�W�t����E�D0N�@!c^�&/�b0ﭝǡ}��_�aN$��굊:	"Ef2��,GZk���ȗv�h`���ce����X���)�X��i	l �ٰm�����y��_�R*�S/w�<�)��{��?Yk��      �   -   x�3�4000�4�4����4�2�|c��7��=... k�
I      �   4   x�3�0NN�471�M320�5IN2׵L6O�M266752OMJN1����� �F
d      �      x�3�L��4�4����� U4      �   �   x���j�0���S�T��&�o=����h	�*�dY+�Mܾ}z�zX��v��)���q�� �����[o_7w��m�@�`�yO�2��Әat�CB�RL���B�'�,a�脊2O*Ȉ	'TbP1z�;
�
b��9�
�凡t&>�_ǣ��->�teYh
�4����&�@��1ؿ��y��b�,W����7�X.���J~F[6���5�eY�?&�r      �   M   x�34�Զ0Q043W015Q0347�N�Tp���Q�L-�K����L��K/�Lͳ4rH�M���K���24#_o� ]�#|      �   ?   x�34�44�7ַPp>��H,��Qp:�&/C��؆�t�Û�`b!��q���'F��� c�'b      �   �   x���A�@�ϻ�b<G�쨵y*hS�܍�DI	�`E��A3̼�O2S�H��[Q��9�myꎨ$���MY�msdQQU\���9�P�>z})��ǀ|����!�V9���$�e�'S�q�F���l�a���\3	�-�!�u
i�X���VBȀ�yH����]f���'��^�ӏ"�|���Kڻ�ׂs~N�e5      �   {	  x��Zߏ۸~v�
c_{83��[��^�k�(�`���Y����Ms8��ޡ�]S��-7/�`���o�g(���J�V~�tI�Ժ����?)5�����z���+�v���M�3q�����f��Z����U5���r���7M~^=T��|�Z��,W�M��7��g��כ��j�̯N0y_W����j�|�O����R�߈����umޭ����T��������|x������i1�ay ?M$���C��5fq���]��y�y�ԋ�Z��|5�׳U�i�W�^���9�}D^�󝇅�#��Y�M��V���,�-��r�f��R�)��C��dP3J�0�yi:��,����޲���;ꧺZM����^5�ì��(ۙ�/іd2�l!��[�6��E��IۧV]�s�XϹ�C˫ͬ
˻~Z-Zb���
׏լ���ە��^�l�#�a2>��$�*P{��?��ԋ���M�T($�����?�=�g֐[�RaA�#��d+�p�[hFk]�`&�ǇAk�[#��tkm'oW��z�nQɺW���t�H�
o���7�[���a���5�#���z�T�j��7�|�mV�����m�V��à��Ztf>}w��ǻf��&p���N5L��pp��� I���T���Q C"vd�"�]G�s|gṬ�n��~f�f��Zv�����~�z|{WmƦ��9���1��yf�d�˖��$#[��'�@���e��S��%��p����+�*7%���Q���,�@c��k9�����F��c�2lK�VH	4����5u�TXPR݀b���'h�8z�/;�-�@0b8X��ޛ=�M>�Jv������å؅�4���3��@�-y��)�^}i�0��g��W#�X%������ڇP�s<��'��ۋ$0�믟0.5�r����p|	�o���=^(T��ɮ<J�7�%�?��ށ��gZ)�ɗʄMd����1S��4�F�h���^����m{B�S��xD4��*N���SG�lr����(�(.}3�Ϙ�����$9F��g���ˑUjW�7
�r���r�J�X$2{���&�9A�ٰ��qŐ��K�Q8�0V7���7���u~�*\?�����M=ϧ��4D�B�P[s�z[�]�!6��6�I��/HA��3D�%
�-[Yҷ$؜a�����1��r�'���q_�ݚw� �ߗN�6 �%��1?�!P�����/�YV>�S��&3r��ښȊ�]y�i��!i��H;4G�pX�8"`��JK�}$ó��qگ2dN�Y�Ƀ��$3�X}m�n֏�fv�<|J5�̗4�R������yǔ�BIR�3{3���@��b����(��eA�<c�A1�(�D��^4M�\>T�"�n��K�r�kIh0ma9�5	h.[�>�E1m��KJ9l
�����t���=����"C$hAJG��䧧_���~�%}��k
� ��`D�������#E(��w[���{��Mx��
j[�K���EF�xY�g��24&����"`Z�-�e���mrQ��F�o#����}<�A.ڄAr�Sxq0:�rU�6"����K���d
��|�#%ye�-�:t�^)��bQ�t��p~�Y��&�[��N���ɨS��ԕ�V�ԙ�(@�0��i�G��x����4��G�Po�cn��p��([��K_�Z.��˶��dZ��di~589��em��9qNj7;'�\�up|x'����{�[���R����)��=�q�?-�Y���=z���ޜ�lt�>r�-�ù�x,�U�F�~IGl����C��Y+��BɲRC�
�ʻV+�Ob^�;S0!o��Eؙ��1c�F�3���fBMhgbL\|��ܳ��-D������݀	�x
#�V�LU\=F~1�j�D��� '�À��2��|�~ �RRP|D��>9������ki�S�m���d �Z6a�����L��)Vb�=�������q<|-3�K����@��sj ��k�3��d��۰�^ID�(��>�~ �>�N,�τ�-�HX:��س6��I�m��r � �t�t_bHLR����s�λ�e7%(\J�-���I�i�(����U�ч]� �,���ݓ���s,j�o��?XN8(�6��:@�q�������=S��h�|8(�H����>�z4;�7��P�#=�t-B�>2��t�}CL���X�XP�x��a[d+����r:�jr��G���?�<
�,Q3��?����2��y�)����)�`��c�n`x^���wSGbu�Y����0/���O�J���^D�[�QjGb��s�,��N�^|���+א���45$�'���Jv�\>�9TL*6(ݫ��6�ˉr�N�M�_ūW��s���      �   �  x��U풣 ��<�UT��]��"8k��U����߈ƸIv�~����!�&2��ċ�=(Dc�0������dn�P/�iVä�	mJ�Ǹ�e��x����(˴(+LpbQ%�7�P��y=�BQd@h%Vȸ5��A��г�Ң���G��f�E�%^�U4��|ÀV��6s1���޶☉����S�%#����\v5M��PYQ��-DK����v���A;�B^���������R'�ث��#(k��4&��g'Be����v����-Z/��K�s�:��2��k�.�9[���)�E��'���ƪzb�!T�{�W�F�LP�;�ӣ�l�j�)3j:�<���.a�XP��ŋ�#��W67�;�+�ƀl�;2Z�=&�����I��j����l�?'�$��?�х���{�>T���.�4/Ҿ������t
B�G'*�>L��i"Gs��]0�N�R��c�&�$�3x�rlh^�D�Z�t�PW��Ui5gޅD����SI�J�H�	u��%1@�<�d�;J�n�u������'�^Ɗ�8�����^І�͹К���B�34�[��AS>�ׂ�����uK��)������C���%��^ph���tKjC�CI���K�|�����5~���=Lhz      �   '	  x���ߒ��������SK�[RK�lElf�l���$oZ�x�Ss��c�>�V��ݡ;��y�\�a����97cS�;T��V�o�Rf��^��Ѐ��(�w�u|�Vx�`BT�]u<5�mI �$�.���^y�����O�{]��:e2%"�nhƯl-NG	��M�-�3��(p� ���Fy�xQ��Q�g�^hR��8YA:�0k̓֔���\*���f�}�A�
��dS�YL��`I��z�I����ŠЗ`��d��' =k�Mk�'d'��M��F�B�6XњYkgm(Ou�Z���|�{�]Tyj^�j���P���_㵗�F�l�٣ k5�t�bt��G��U���s���i�-Gf�����I��b	�� ��DA��Up��2~S���l	�����<�+iǺ//uj����	P���e[�_�W"�!e��{����/�Sմ�v�:�o���?҂��8��_��A��v�h�a����][�������Bl��M�p2}Ͷ�l��⦥�Wms�Ʈb~-��z��a�^kyglcC&���E�l��+c\�c�S#<� �QI������sn]^�������M�Y�	��Ԝ�UI>kJʪ���a�O�93�]�S�QrfF[��sfZ�9�93j+�=�d���zN����S<Q�N*���3"�$9wGYBN�\qx��V�׎��i���Y�}�,�`:M��l9����}xw.���^��
�:���xt(���d��<��߮��gN�K��1�Kgc�]�t*���c��ds?b�._��f9J�
g8 �����QN(E�ِ���řEж�=�=�K4F/�ȟ����D94�8z.*}�r�=�r�¹�ui�1�^�^D�f�0$�M9�㷸Z��fwwy|˹]9�`����nm���>Q@*���������X]�_��=
��� �[% |�/]{\Y�*̅��Y�o�����}����T:->c��ʮ��ǥ����V� �_PV�('�>�c�گ]��rq�&8�0d�]#�C�b�Ʌa�7Ƨ����G[�G�ۍ,�3̭�̶� ������5�-}��\��J�9��r�c���\�ɺ�S�&˓Z�8���On�}�Ujx��iIk(�E�d�+�-�?���wT�A*<��⊗�Z��9��rO,@y~XA�'0�Fe���-d�^�o������!�`��1���h��3ѫ�{�8vQ�������S�&�8�ݚ�h���qCA@�o�$�޺K��Sק���8����(:<C�E�� 	�,�.��i���� �9���D��`�3B�'88�̋����ݤ�\S����+t���L^���<z�Bʷn�I7�̄�{_�|M����U�K�蜬_v[�Ӈ �|� )���(���Cs��w�cd�TF��8^�Y�/C��!�K��I>��qd�-h?G�B�Җ��QF�t�<?��O<���,��t���\.��u�SY�� od=�ʁS��ɋ�2dJ��j��a��,m����$��4��"�����RL0.(��Ѽ�q�{���Ot	�e�rB��v'�K����c�rd�[nz�O����n9���]Â�),�>��<�����mM�p����]�lA�z��<�g���=)��S������p箥�k�r}vҰ����Xw�6<�������O�MR$�uN�9a6��"S������IS�����Y�'(���%��J	 .�~��B�0�]9Ntr��eN�8q�Y�������0(�JL �@���e��QzWWß����(�7v>��+#�����p9V-M�ۂ��v�?�~���/�<0rߺ�!�u�¼mw=7���S��Z ����~�V������.�r׷�ľ�&}�U?��Xr�n����=��x���"LI�{���I%�&�Ä�+�^�Y�s#�M�D��$����T�&J$�L��$���Dô;-������cs(_��1��(�������`v��_��᣺|rK�hcɻ�S��}?X������A�����G_p�o�=O���ˋ���Ѿ�Drx@�� ��r\����<P���ޤ]�L��K���z@���U���(��H`y�ږ�9c}x�����G� ��o�aza���Ϩ�9U�u��:�z�������1FG'4�h�����7]P�/��� M+�0���ɻ���1�nz��zͩ;��?7=DO2�n�L�2��ݒ��`���[ O}6��E˩�o������՞{��e:���V�p/�Q�;��x.|�������"R�FqB�?PD�?ŏ?��?�      �   H  x��UK��8<�E�W��yD��t�d�Ǝ�%[{!@xف&��:����j���ݖ��
}�U��vߏ�!� :B�*��g�D�N��}�k>�p������b��P�P<�64������fHT��݅�9���,޶1�k��I���U0�P�h�ey�b&S�U<b��H�m%�]yP��b��i{O����=H^�\z'쀶�0_�]�Am�o���;n����1*�f�\�R�P,�_`��_0�@�PL���J�/jm�<9�:����7;���<Z��c%��W&�������]��B-�)ڝ�.)�T�Q�qPw�G��|�  �O����3�f�a4�����SU&���9)��ho�-���^��S1az�y����J�v#S�f�B�������/L7��@s���'p�f�O| �8x�!�΃�Y_�ԭ�ύ]�p�-*Z��rR��mbt��X����/w��X�_�k7��s$B>��(��#V�������
�_���r��D���7��{B>A��vf�5�����I�֖��<'(���^���Y�{������ɿ�	����<SL,⠇'6�q�W�\�*Oi��C�z=�귫��pU��4�Ӫ�����ҜX�05'�k��v�`�Q���~��}h�v�C�&��&��{��ڔU޺2s;-�K�d��:Y�D�"� 1?�&��kQ��|�P�c-�_��;33X�Ұ�{���!�����lyT�3�]�\��1�9ۨ��Ր$�9_e�H�l����<���eϠɳ���z넼>�RG�/'����,M����:����;�Աl�{��ߦOOO��nw      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �         �   x�3�O�I��MU����L�S�K/�R�E%i�9����E��E��������!F�n�>�E���>��zY�%%�V�����z���%�I�z@3��K�3��l#��C|3��2<��-�mc� �cP          �   x�34�t��+IL.�w}�03�U��'�12X�?��O!�_!���D����(����rf���'�&�g��'��'C���*H�24���f���Ee�ɩŜ��
���
���9)
���ũ
���&�e�BL0�Ԅ=... ��d�         L   x�31�L��4�L�-�7�3�3��M�+���OI-�O͋7����"��Ҥ��d."է%��p��P37F��� ��-$         �   x���m�0E�� �[3I/��e�I���5�^&��Ev������������ �JE+�.�(6��N\P"\i��p@g�,���2��L{�::�_�-~��s�0%��[sZ6s�0�<Ft���)x7j��^]��iǮ$�3N��]*
oI�ۊ9k�M\�J<�����q�'���      	   |   x�u�A
B!����]�t����
2�R���@&ж?��'�w?0����T]^Y��-C� ��v	��4 -!I�tK�$�p-��]\r���N��S��Ϸ�%��c�G���'��;��u�         a  x��Y�r��^?<�p;%W�ƱG�\W�$ˢ�Lg<�wA.D,�����E^�w���Q�$��)Gv2�K�E�v���|�x�����v&3��o�;;��_%Ɗ����%ˍ2�9�/�o��h'2/|m�e%]&��	%}��	��V����%/[�4JI�DͰ[�Zz.Z��"��B.���]��IٵPJh/܏�`�C�Y�?Ȳv���t-�=�τ�<��u���s/�Y�N-w��c3�b�0:�*/�
\I���Z�~2�'M.��L���V��)b/6(�R�LǴt
�Z.�$ͭB���X	b���.a�4���uʮj���Jؽ5�)K�C����y�	�Xx�cMnԲ<P�gY]:į:�mQ���Fi��)�����$ΤIR"�PXj�Ֆ<�D��G��kI�,�F3��5(�qX+��%�⠠P�)8v�-���"����+>��2s���m��K�*D3����hI���;��Q�d�Za���p;0�;<i�@L�̥>�.7��
�kțծ�,�$�sI2M���$��YvNY���^�������s����5���Ol�j��"e��? x���P���ó~[�>�-u�Բ��P(+�ҹ:��-y��=�s�JkA��L���a�xo�Mc�^i��Q,�ƬgKo�vP&h�2�˹Bz�k� �Vx��_�,q��\4t�]�56hC5_�O���HI-�@&W�͔����2��}&%G�i9J[	-�0!+�^� x����*@ )�ԝw�H_�?-Dp�^�\8;�o������%)M�(���)� ������mA��Y���ՉB��5���,4�!r	�N�A�����Q��������? �y�%G�xT���"�`ˡ.�!v#�x�, ^c�|�8�����V\`[�#\�0
ip��[S�t�~A,a}�>u
�
|�6��D@Ö\Ee�n�cB���pJU�$�Ov��W+Z���_�Z�ː8>�]o�+�$Ϥ���c!�x��0�(o�<�/r	�!m7����q�OHL���5ؗr/b�����
�@U}���Y��k(GKR�D���2��𕄖�x��m�2w�)8�J�:Q���(�[Ȅ���!5�F�p��c�Lf��N@ui�K 2*"|�И�B����g�[��/gwHA�/�jq���_sP��<-3�/����HnEV �����s-u�R�,9׹��I���%�[���)��)_J�,�\*�t������&%X�s��m�ϊ����כ3g�v�ۄz��Q��ry � KD�蠯jwӻj��:�q�3hw;�ӛ���n7�F���ϝ΃��iw<���d0��m�d|�x�>m��"5������4m���"��N�R�C��0:�z�
@A����8�ɏ"��j|���I`�-�{}=c��Վi'�ݙy|`%*P�J��J	�D� y}��q4�Y,O�[PX�h7��>���j�8�� S�Ω �T�P����80S6��
��b*�Z����X�>�����ە 3��3%9�z�e��EMU#�2�H+Alfj��,�Q��r���̌:�2�6Lv�4N�@�������]���!��N45���������k|�of�]�~:Ƿ��,�K^%{�nv�#��������p���Vz�=�>뎈]���ۙt�C�o{���8���(r�$��B_�^��'�߈̠9��u&U�K�Mk3�����r3G_���ă�Ck�����}B ����bm�O�iݗ���Ƃ/�8t
���w�$RKw��TO��hr��h�������A�ߙz߭�w^Ջߍ��{PR�
�*�yu�-~��`3�x5����:�+���R�ju�Kv�n�:]~���z')�}��頟v���!��3 ꧝N:�w{�ISVGɶ^�!+M����t�a$������*��ͭ$�1��hؠ����F$А�B�����@�3�~hna�2����¼��n�(�z0;�~O ��9#�v]���v��x0�siM]1r���0e�+���5DkѼ��(���&���,���o8�
���Į;�<ª���w��&��#��?��x��w�8�8�%'�7aΆ����s̠�𔼊�-�H��
Q�M�0B�/���K�����f,W�7��y���R�j1׫P�=Ue �u/���^h�/�Rj��P�e謩}
�@>����C9�k�F4�+��E9�)k<
���M<����[:7M����N�E�$'�����-�����9��c�fr����d��5�VȆ�ٷ�&x�	>��#�r9 !��$������
�_N�����n�uǃ�6�v�Gt�ǂn�L�qJ�q'��.C��m�G�;��K��2�
oR�*פ�K#�v�H_#�)v5�Ԏ��V�a�̻���~&O&��}�׫[28�z��_
��vC�@��r4[�u2	J��ڶ"��Fi<R�E�q )�/4Q��k��C��A��*Vs�C�=V�[`����vZ,�{u�^�|:��[0>�kW�+��B6-/J����1�1y������R��?��s���.��Ɵˇ�М8�'�tѭ����(�LF���oC���ˤq F��e�?O�L΍KN�o@���zs�v:�Spݩն�-~D��x[� 1��ԡ�(UV ��h`S�^nD)ʹ�S�:����?�2t�t�Y	��x��
���@�8e�i� @�=j��h�0���
*�`�[ʄ��3�Ā0�);Q
�����%��2�r�����L	��E(-Y!�����Uս�P++���n�mHt�e�Ԇ����$�~ t���1�m�X���r�۝��`�^�K~'�F�<��������߄+Ph2�W����IYSѴ��It�I�D^�w�� -䲘K@�$i]վu����}��n�n���yԱ�9Z�ݽ�ѕ�I�]Hӿ,�.��P�X:>-_[��C�R�x0�v���C�<H�ϵ�_�]�0>���/?K
!�)&��t0I;��N��Zҙ�i�w��F6�E-��4f��������ݦ�����%�"�n]R��#��O�<y�j8         H   x����0�f�*�������(|8�,`L$�����;���i�1
sd�(pŸE�r�ݡ�v�v��l|��8K         4   x�3�OM�2�t�K)��L�2����2�t.�/.V�I,I�/������ �         �  x�Ւ�n�0���S�� �,�����+�%q����(2m�E���×N����%���>q���U	�j�Z��!Y��ц)hR�3����|@d8��A��pD``����RCV��I��O�k�=��o���撸n�B���n��*y��,gʂ4�3�}�����L���,���s���YpjA�ћ�A���h�C�
<U�����|�����.��&L tL��`��<���dԽ(� �"��@�iLY`��Z9�b�.L>0R�$�����;O�կß|W����j�.�>[��,1E���QlU�`��v�~,9)6�ho˪-�\�@��]�d�)�P>6r��SxT'u�^�ě�k�����4�C�̯�8?���o�4#������)M�w��h�            x�36�0����� 
��         3   x�36�,I-.�����L����M�OJ�O��+IL.��*H�0&�"F��� �=+         
  x��P�NC1���
��+Jb� L�����XM�G�������:���5�+����H���%`�{��]��iJ�z����L��N���E���$�bK9t�/\�F���c�]���c=6���HR�[rǄ"+����⩬�mG%s6y��	L~���-�E�5>q���lIZ蕱�ō��V̽w_t9f��<�����-h��JN�,�4Z�0�9{�jZb���R�7�q}�����8�_�t��     