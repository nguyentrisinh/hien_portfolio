PGDMP         '                v            hien_portfolio_db    9.6.4    9.6.4 n              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    107408    hien_portfolio_db    DATABASE     �   CREATE DATABASE hien_portfolio_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 !   DROP DATABASE hien_portfolio_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                       1259    109136    about_me_plugin_aboutme    TABLE     �   CREATE TABLE about_me_plugin_aboutme (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 +   DROP TABLE public.about_me_plugin_aboutme;
       public         postgres    false    3                       1259    109134    about_me_plugin_aboutme_id_seq    SEQUENCE     �   CREATE SEQUENCE about_me_plugin_aboutme_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.about_me_plugin_aboutme_id_seq;
       public       postgres    false    3    274                       0    0    about_me_plugin_aboutme_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE about_me_plugin_aboutme_id_seq OWNED BY about_me_plugin_aboutme.id;
            public       postgres    false    273                       1259    109147    about_me_plugin_skill    TABLE       CREATE TABLE about_me_plugin_skill (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    percentage integer NOT NULL,
    about_me_id_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 )   DROP TABLE public.about_me_plugin_skill;
       public         postgres    false    3                       1259    109145    about_me_plugin_skill_id_seq    SEQUENCE     ~   CREATE SEQUENCE about_me_plugin_skill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.about_me_plugin_skill_id_seq;
       public       postgres    false    3    276                       0    0    about_me_plugin_skill_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE about_me_plugin_skill_id_seq OWNED BY about_me_plugin_skill.id;
            public       postgres    false    275                       1259    109155    about_me_plugin_statistic    TABLE     R  CREATE TABLE about_me_plugin_statistic (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    statistic character varying(20) NOT NULL,
    about_me_id_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    fa_icon character varying(80) NOT NULL
);
 -   DROP TABLE public.about_me_plugin_statistic;
       public         postgres    false    3                       1259    109153     about_me_plugin_statistic_id_seq    SEQUENCE     �   CREATE SEQUENCE about_me_plugin_statistic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.about_me_plugin_statistic_id_seq;
       public       postgres    false    278    3                       0    0     about_me_plugin_statistic_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE about_me_plugin_statistic_id_seq OWNED BY about_me_plugin_statistic.id;
            public       postgres    false    277            �            1259    108062    aldryn_style_style    TABLE        CREATE TABLE aldryn_style_style (
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
       public         postgres    false    3            �            1259    107440 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    107438    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    192    3                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    191            �            1259    107450    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    107448    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    194                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    193            �            1259    107432    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    107430    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    190                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    189            �            1259    107458 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
       public         postgres    false    3            �            1259    107468    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    107466    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    198    3                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    197            �            1259    107456    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    196    3                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    195            �            1259    107476    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    107474 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    200    3                        0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    199            �            1259    107579    cms_aliaspluginmodel    TABLE     �   CREATE TABLE cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);
 (   DROP TABLE public.cms_aliaspluginmodel;
       public         postgres    false    3            �            1259    107568    cms_cmsplugin    TABLE     �  CREATE TABLE cms_cmsplugin (
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
       public         postgres    false    3            �            1259    107566    cms_cmsplugin_id_seq    SEQUENCE     v   CREATE SEQUENCE cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cms_cmsplugin_id_seq;
       public       postgres    false    3    206            !           0    0    cms_cmsplugin_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE cms_cmsplugin_id_seq OWNED BY cms_cmsplugin.id;
            public       postgres    false    205            �            1259    107586    cms_globalpagepermission    TABLE     �  CREATE TABLE cms_globalpagepermission (
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
       public         postgres    false    3            �            1259    107584    cms_globalpagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cms_globalpagepermission_id_seq;
       public       postgres    false    3    209            "           0    0    cms_globalpagepermission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE cms_globalpagepermission_id_seq OWNED BY cms_globalpagepermission.id;
            public       postgres    false    208            �            1259    107594    cms_globalpagepermission_sites    TABLE     �   CREATE TABLE cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);
 2   DROP TABLE public.cms_globalpagepermission_sites;
       public         postgres    false    3            �            1259    107592 %   cms_globalpagepermission_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cms_globalpagepermission_sites_id_seq;
       public       postgres    false    3    211            #           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE cms_globalpagepermission_sites_id_seq OWNED BY cms_globalpagepermission_sites.id;
            public       postgres    false    210            �            1259    107602    cms_page    TABLE     �  CREATE TABLE cms_page (
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
       public         postgres    false    3            �            1259    107600    cms_page_id_seq    SEQUENCE     q   CREATE SEQUENCE cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cms_page_id_seq;
       public       postgres    false    3    213            $           0    0    cms_page_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE cms_page_id_seq OWNED BY cms_page.id;
            public       postgres    false    212            �            1259    107750    cms_page_placeholders    TABLE     �   CREATE TABLE cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);
 )   DROP TABLE public.cms_page_placeholders;
       public         postgres    false    3            �            1259    107748    cms_page_placeholders_id_seq    SEQUENCE     ~   CREATE SEQUENCE cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_page_placeholders_id_seq;
       public       postgres    false    3    221            %           0    0    cms_page_placeholders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE cms_page_placeholders_id_seq OWNED BY cms_page_placeholders.id;
            public       postgres    false    220            �            1259    107620    cms_pagepermission    TABLE     �  CREATE TABLE cms_pagepermission (
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
       public         postgres    false    3            �            1259    107618    cms_pagepermission_id_seq    SEQUENCE     {   CREATE SEQUENCE cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cms_pagepermission_id_seq;
       public       postgres    false    3    215            &           0    0    cms_pagepermission_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE cms_pagepermission_id_seq OWNED BY cms_pagepermission.id;
            public       postgres    false    214            �            1259    107729    cms_pageuser    TABLE     d   CREATE TABLE cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
     DROP TABLE public.cms_pageuser;
       public         postgres    false    3            �            1259    107734    cms_pageusergroup    TABLE     j   CREATE TABLE cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
 %   DROP TABLE public.cms_pageusergroup;
       public         postgres    false    3            �            1259    107741    cms_placeholder    TABLE     �   CREATE TABLE cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);
 #   DROP TABLE public.cms_placeholder;
       public         postgres    false    3            �            1259    107739    cms_placeholder_id_seq    SEQUENCE     x   CREATE SEQUENCE cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cms_placeholder_id_seq;
       public       postgres    false    3    219            '           0    0    cms_placeholder_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE cms_placeholder_id_seq OWNED BY cms_placeholder.id;
            public       postgres    false    218            �            1259    107760    cms_placeholderreference    TABLE     �   CREATE TABLE cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);
 ,   DROP TABLE public.cms_placeholderreference;
       public         postgres    false    3            �            1259    107767    cms_staticplaceholder    TABLE     &  CREATE TABLE cms_staticplaceholder (
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
       public         postgres    false    3            �            1259    107765    cms_staticplaceholder_id_seq    SEQUENCE     ~   CREATE SEQUENCE cms_staticplaceholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_staticplaceholder_id_seq;
       public       postgres    false    224    3            (           0    0    cms_staticplaceholder_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE cms_staticplaceholder_id_seq OWNED BY cms_staticplaceholder.id;
            public       postgres    false    223            �            1259    107780 	   cms_title    TABLE     {  CREATE TABLE cms_title (
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
       public         postgres    false    3            �            1259    107778    cms_title_id_seq    SEQUENCE     r   CREATE SEQUENCE cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cms_title_id_seq;
       public       postgres    false    3    226            )           0    0    cms_title_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cms_title_id_seq OWNED BY cms_title.id;
            public       postgres    false    225            �            1259    108181    cms_treenode    TABLE     S  CREATE TABLE cms_treenode (
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
       public         postgres    false    3            �            1259    108179    cms_treenode_id_seq    SEQUENCE     u   CREATE SEQUENCE cms_treenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cms_treenode_id_seq;
       public       postgres    false    3    233            *           0    0    cms_treenode_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE cms_treenode_id_seq OWNED BY cms_treenode.id;
            public       postgres    false    232            �            1259    108134    cms_urlconfrevision    TABLE     l   CREATE TABLE cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);
 '   DROP TABLE public.cms_urlconfrevision;
       public         postgres    false    3            �            1259    108132    cms_urlconfrevision_id_seq    SEQUENCE     |   CREATE SEQUENCE cms_urlconfrevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cms_urlconfrevision_id_seq;
       public       postgres    false    3    231            +           0    0    cms_urlconfrevision_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE cms_urlconfrevision_id_seq OWNED BY cms_urlconfrevision.id;
            public       postgres    false    230            �            1259    107795    cms_usersettings    TABLE     �   CREATE TABLE cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);
 $   DROP TABLE public.cms_usersettings;
       public         postgres    false    3            �            1259    107793    cms_usersettings_id_seq    SEQUENCE     y   CREATE SEQUENCE cms_usersettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cms_usersettings_id_seq;
       public       postgres    false    228    3            ,           0    0    cms_usersettings_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE cms_usersettings_id_seq OWNED BY cms_usersettings.id;
            public       postgres    false    227            "           1259    109343 #   contact_me_plugin_callactionsection    TABLE       CREATE TABLE contact_me_plugin_callactionsection (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(150) NOT NULL,
    message character varying(500) NOT NULL,
    image character varying(100) NOT NULL,
    background_image character varying(100)
);
 7   DROP TABLE public.contact_me_plugin_callactionsection;
       public         postgres    false    3                       1259    109309    contact_me_plugin_contactme    TABLE     �   CREATE TABLE contact_me_plugin_contactme (
    cmsplugin_ptr_id integer NOT NULL,
    phone character varying(100) NOT NULL,
    address character varying(250) NOT NULL,
    email character varying(150) NOT NULL
);
 /   DROP TABLE public.contact_me_plugin_contactme;
       public         postgres    false    3                       1259    109317    contact_me_plugin_googlemap    TABLE     �   CREATE TABLE contact_me_plugin_googlemap (
    cmsplugin_ptr_id integer NOT NULL,
    address character varying(250) NOT NULL
);
 /   DROP TABLE public.contact_me_plugin_googlemap;
       public         postgres    false    3            !           1259    109324    contact_me_plugin_message    TABLE       CREATE TABLE contact_me_plugin_message (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    email character varying(250) NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 -   DROP TABLE public.contact_me_plugin_message;
       public         postgres    false    3                        1259    109322     contact_me_plugin_message_id_seq    SEQUENCE     �   CREATE SEQUENCE contact_me_plugin_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.contact_me_plugin_message_id_seq;
       public       postgres    false    3    289            -           0    0     contact_me_plugin_message_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE contact_me_plugin_message_id_seq OWNED BY contact_me_plugin_message.id;
            public       postgres    false    288            �            1259    107536    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         postgres    false    3            �            1259    107534    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    202            .           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    201            �            1259    107422    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    107420    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    188    3            /           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    187            �            1259    107411    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    107409    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    186            0           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    185                       1259    109106    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    107560    django_site    TABLE     �   CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    3            �            1259    107558    django_site_id_seq    SEQUENCE     t   CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    204    3            1           0    0    django_site_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;
            public       postgres    false    203            �            1259    108212    djangocms_column_column    TABLE     z   CREATE TABLE djangocms_column_column (
    cmsplugin_ptr_id integer NOT NULL,
    width character varying(50) NOT NULL
);
 +   DROP TABLE public.djangocms_column_column;
       public         postgres    false    3            �            1259    108217    djangocms_column_multicolumns    TABLE     V   CREATE TABLE djangocms_column_multicolumns (
    cmsplugin_ptr_id integer NOT NULL
);
 1   DROP TABLE public.djangocms_column_multicolumns;
       public         postgres    false    3            �            1259    108408    djangocms_file_file    TABLE     f  CREATE TABLE djangocms_file_file (
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
       public         postgres    false    3            �            1259    108477    djangocms_file_folder    TABLE       CREATE TABLE djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);
 )   DROP TABLE public.djangocms_file_folder;
       public         postgres    false    3            �            1259    108497    djangocms_googlemap_googlemap    TABLE     b  CREATE TABLE djangocms_googlemap_googlemap (
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
       public         postgres    false    3            �            1259    108586 #   djangocms_googlemap_googlemapmarker    TABLE     :  CREATE TABLE djangocms_googlemap_googlemapmarker (
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
       public         postgres    false    3            �            1259    108594 "   djangocms_googlemap_googlemaproute    TABLE       CREATE TABLE djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);
 6   DROP TABLE public.djangocms_googlemap_googlemaproute;
       public         postgres    false    3            �            1259    108619    djangocms_link_link    TABLE     �  CREATE TABLE djangocms_link_link (
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
       public         postgres    false    3            �            1259    108696    djangocms_picture_picture    TABLE     ^  CREATE TABLE djangocms_picture_picture (
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
       public         postgres    false    3                       1259    108858    djangocms_snippet_snippet    TABLE     �   CREATE TABLE djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 -   DROP TABLE public.djangocms_snippet_snippet;
       public         postgres    false    3                        1259    108856     djangocms_snippet_snippet_id_seq    SEQUENCE     �   CREATE SEQUENCE djangocms_snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djangocms_snippet_snippet_id_seq;
       public       postgres    false    257    3            2           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE djangocms_snippet_snippet_id_seq OWNED BY djangocms_snippet_snippet.id;
            public       postgres    false    256                       1259    108869    djangocms_snippet_snippetptr    TABLE     v   CREATE TABLE djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);
 0   DROP TABLE public.djangocms_snippet_snippetptr;
       public         postgres    false    3                       1259    108914    djangocms_text_ckeditor_text    TABLE     m   CREATE TABLE djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);
 0   DROP TABLE public.djangocms_text_ckeditor_text;
       public         postgres    false    3                       1259    108937    djangocms_video_videoplayer    TABLE       CREATE TABLE djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL
);
 /   DROP TABLE public.djangocms_video_videoplayer;
       public         postgres    false    3                       1259    109004    djangocms_video_videosource    TABLE     �   CREATE TABLE djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);
 /   DROP TABLE public.djangocms_video_videosource;
       public         postgres    false    3                       1259    109012    djangocms_video_videotrack    TABLE       CREATE TABLE djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);
 .   DROP TABLE public.djangocms_video_videotrack;
       public         postgres    false    3                       1259    109045    easy_thumbnails_source    TABLE     �   CREATE TABLE easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    3                       1259    109043    easy_thumbnails_source_id_seq    SEQUENCE        CREATE SEQUENCE easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    264    3            3           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE easy_thumbnails_source_id_seq OWNED BY easy_thumbnails_source.id;
            public       postgres    false    263            
           1259    109053    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    3            	           1259    109051     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    266    3            4           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE easy_thumbnails_thumbnail_id_seq OWNED BY easy_thumbnails_thumbnail.id;
            public       postgres    false    265                       1259    109079 #   easy_thumbnails_thumbnaildimensions    TABLE     D  CREATE TABLE easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false    3                       1259    109077 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    3    268            5           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq OWNED BY easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    267            �            1259    108244    filer_clipboard    TABLE     X   CREATE TABLE filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         postgres    false    3            �            1259    108242    filer_clipboard_id_seq    SEQUENCE     x   CREATE SEQUENCE filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       postgres    false    3    237            6           0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE filer_clipboard_id_seq OWNED BY filer_clipboard.id;
            public       postgres    false    236            �            1259    108252    filer_clipboarditem    TABLE        CREATE TABLE filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         postgres    false    3            �            1259    108250    filer_clipboarditem_id_seq    SEQUENCE     |   CREATE SEQUENCE filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       postgres    false    239    3            7           0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE filer_clipboarditem_id_seq OWNED BY filer_clipboarditem.id;
            public       postgres    false    238            �            1259    108260 
   filer_file    TABLE       CREATE TABLE filer_file (
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
       public         postgres    false    3            �            1259    108258    filer_file_id_seq    SEQUENCE     s   CREATE SEQUENCE filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       postgres    false    3    241            8           0    0    filer_file_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE filer_file_id_seq OWNED BY filer_file.id;
            public       postgres    false    240            �            1259    108271    filer_folder    TABLE     �  CREATE TABLE filer_folder (
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
       public         postgres    false    3            �            1259    108269    filer_folder_id_seq    SEQUENCE     u   CREATE SEQUENCE filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       postgres    false    3    243            9           0    0    filer_folder_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE filer_folder_id_seq OWNED BY filer_folder.id;
            public       postgres    false    242            �            1259    108283    filer_folderpermission    TABLE       CREATE TABLE filer_folderpermission (
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
       public         postgres    false    3            �            1259    108281    filer_folderpermission_id_seq    SEQUENCE        CREATE SEQUENCE filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       postgres    false    3    245            :           0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE filer_folderpermission_id_seq OWNED BY filer_folderpermission.id;
            public       postgres    false    244            �            1259    108291    filer_image    TABLE     �  CREATE TABLE filer_image (
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
       public         postgres    false    3            �            1259    108381    filer_thumbnailoption    TABLE     �   CREATE TABLE filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         postgres    false    3            �            1259    108379    filer_thumbnailoption_id_seq    SEQUENCE     ~   CREATE SEQUENCE filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       postgres    false    3    248            ;           0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE filer_thumbnailoption_id_seq OWNED BY filer_thumbnailoption.id;
            public       postgres    false    247                       1259    109121    hero_area_plugin_heroarea    TABLE       CREATE TABLE hero_area_plugin_heroarea (
    cmsplugin_ptr_id integer NOT NULL,
    intro_title character varying(250) NOT NULL,
    title character varying(250) NOT NULL,
    background_image character varying(100) NOT NULL,
    youtube_introduction character varying(500)
);
 -   DROP TABLE public.hero_area_plugin_heroarea;
       public         postgres    false    3                       1259    109299    hero_area_plugin_shortheroarea    TABLE     �   CREATE TABLE hero_area_plugin_shortheroarea (
    cmsplugin_ptr_id integer NOT NULL,
    page_title character varying(100) NOT NULL,
    page_message character varying(150) NOT NULL,
    background_image character varying(100) NOT NULL
);
 2   DROP TABLE public.hero_area_plugin_shortheroarea;
       public         postgres    false    3                       1259    109096    menus_cachekey    TABLE     �   CREATE TABLE menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);
 "   DROP TABLE public.menus_cachekey;
       public         postgres    false    3                       1259    109094    menus_cachekey_id_seq    SEQUENCE     w   CREATE SEQUENCE menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.menus_cachekey_id_seq;
       public       postgres    false    270    3            <           0    0    menus_cachekey_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE menus_cachekey_id_seq OWNED BY menus_cachekey.id;
            public       postgres    false    269            #           1259    109364    portfolio_app_latestworksection    TABLE     �   CREATE TABLE portfolio_app_latestworksection (
    cmsplugin_ptr_id integer NOT NULL,
    message character varying(500) NOT NULL
);
 3   DROP TABLE public.portfolio_app_latestworksection;
       public         postgres    false    3                       1259    109227    portfolio_app_mediaasset    TABLE     N  CREATE TABLE portfolio_app_mediaasset (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    type smallint NOT NULL,
    media_asset character varying(100) NOT NULL,
    youtube_url character varying(255),
    project_id_id integer NOT NULL,
    CONSTRAINT portfolio_app_mediaasset_type_check CHECK ((type >= 0))
);
 ,   DROP TABLE public.portfolio_app_mediaasset;
       public         postgres    false    3                       1259    109225    portfolio_app_mediaasset_id_seq    SEQUENCE     �   CREATE SEQUENCE portfolio_app_mediaasset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.portfolio_app_mediaasset_id_seq;
       public       postgres    false    3    280            =           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE portfolio_app_mediaasset_id_seq OWNED BY portfolio_app_mediaasset.id;
            public       postgres    false    279                       1259    109234    portfolio_app_project    TABLE     t  CREATE TABLE portfolio_app_project (
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
    updated_at timestamp with time zone NOT NULL
);
 )   DROP TABLE public.portfolio_app_project;
       public         postgres    false    3                       1259    109249    portfolio_app_project_tags    TABLE     �   CREATE TABLE portfolio_app_project_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    tag_id integer NOT NULL
);
 .   DROP TABLE public.portfolio_app_project_tags;
       public         postgres    false    3                       1259    109247 !   portfolio_app_project_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE portfolio_app_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.portfolio_app_project_tags_id_seq;
       public       postgres    false    3    284            >           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE portfolio_app_project_tags_id_seq OWNED BY portfolio_app_project_tags.id;
            public       postgres    false    283                       1259    109242    portfolio_app_tag    TABLE     t   CREATE TABLE portfolio_app_tag (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public.portfolio_app_tag;
       public         postgres    false    3            (           1259    109413    services_plugin_serviceitem    TABLE       CREATE TABLE services_plugin_serviceitem (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    content character varying(500) NOT NULL,
    icon_class_name character varying(250) NOT NULL,
    services_component_id_id integer NOT NULL
);
 /   DROP TABLE public.services_plugin_serviceitem;
       public         postgres    false    3            '           1259    109411 "   services_plugin_serviceitem_id_seq    SEQUENCE     �   CREATE SEQUENCE services_plugin_serviceitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.services_plugin_serviceitem_id_seq;
       public       postgres    false    296    3            ?           0    0 "   services_plugin_serviceitem_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE services_plugin_serviceitem_id_seq OWNED BY services_plugin_serviceitem.id;
            public       postgres    false    295            )           1259    109422 !   services_plugin_servicescomponent    TABLE     Z   CREATE TABLE services_plugin_servicescomponent (
    cmsplugin_ptr_id integer NOT NULL
);
 5   DROP TABLE public.services_plugin_servicescomponent;
       public         postgres    false    3            &           1259    109401 '   testimonial_plugin_testimonialcomponent    TABLE     �   CREATE TABLE testimonial_plugin_testimonialcomponent (
    cmsplugin_ptr_id integer NOT NULL,
    background_image character varying(100) NOT NULL
);
 ;   DROP TABLE public.testimonial_plugin_testimonialcomponent;
       public         postgres    false    3            %           1259    109381 "   testimonial_plugin_testimonialitem    TABLE     �   CREATE TABLE testimonial_plugin_testimonialitem (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    content character varying(500) NOT NULL,
    testimonial_id_id integer NOT NULL
);
 6   DROP TABLE public.testimonial_plugin_testimonialitem;
       public         postgres    false    3            $           1259    109379 )   testimonial_plugin_testimonialitem_id_seq    SEQUENCE     �   CREATE SEQUENCE testimonial_plugin_testimonialitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.testimonial_plugin_testimonialitem_id_seq;
       public       postgres    false    293    3            @           0    0 )   testimonial_plugin_testimonialitem_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE testimonial_plugin_testimonialitem_id_seq OWNED BY testimonial_plugin_testimonialitem.id;
            public       postgres    false    292            �	           2604    109139    about_me_plugin_aboutme id    DEFAULT     z   ALTER TABLE ONLY about_me_plugin_aboutme ALTER COLUMN id SET DEFAULT nextval('about_me_plugin_aboutme_id_seq'::regclass);
 I   ALTER TABLE public.about_me_plugin_aboutme ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    274    273    274            �	           2604    109150    about_me_plugin_skill id    DEFAULT     v   ALTER TABLE ONLY about_me_plugin_skill ALTER COLUMN id SET DEFAULT nextval('about_me_plugin_skill_id_seq'::regclass);
 G   ALTER TABLE public.about_me_plugin_skill ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    276    275    276            �	           2604    109158    about_me_plugin_statistic id    DEFAULT     ~   ALTER TABLE ONLY about_me_plugin_statistic ALTER COLUMN id SET DEFAULT nextval('about_me_plugin_statistic_id_seq'::regclass);
 K   ALTER TABLE public.about_me_plugin_statistic ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    277    278    278            _	           2604    107443    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192            `	           2604    107453    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    194    194            ^	           2604    107435    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            a	           2604    107461    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    196    196            b	           2604    107471    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198            c	           2604    107479    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            g	           2604    107571    cms_cmsplugin id    DEFAULT     f   ALTER TABLE ONLY cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('cms_cmsplugin_id_seq'::regclass);
 ?   ALTER TABLE public.cms_cmsplugin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206            k	           2604    107589    cms_globalpagepermission id    DEFAULT     |   ALTER TABLE ONLY cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_id_seq'::regclass);
 J   ALTER TABLE public.cms_globalpagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            l	           2604    107597 !   cms_globalpagepermission_sites id    DEFAULT     �   ALTER TABLE ONLY cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_sites_id_seq'::regclass);
 P   ALTER TABLE public.cms_globalpagepermission_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            m	           2604    107605    cms_page id    DEFAULT     \   ALTER TABLE ONLY cms_page ALTER COLUMN id SET DEFAULT nextval('cms_page_id_seq'::regclass);
 :   ALTER TABLE public.cms_page ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            q	           2604    107753    cms_page_placeholders id    DEFAULT     v   ALTER TABLE ONLY cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('cms_page_placeholders_id_seq'::regclass);
 G   ALTER TABLE public.cms_page_placeholders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221            n	           2604    107623    cms_pagepermission id    DEFAULT     p   ALTER TABLE ONLY cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('cms_pagepermission_id_seq'::regclass);
 D   ALTER TABLE public.cms_pagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            o	           2604    107744    cms_placeholder id    DEFAULT     j   ALTER TABLE ONLY cms_placeholder ALTER COLUMN id SET DEFAULT nextval('cms_placeholder_id_seq'::regclass);
 A   ALTER TABLE public.cms_placeholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            r	           2604    107770    cms_staticplaceholder id    DEFAULT     v   ALTER TABLE ONLY cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('cms_staticplaceholder_id_seq'::regclass);
 G   ALTER TABLE public.cms_staticplaceholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            s	           2604    107783    cms_title id    DEFAULT     ^   ALTER TABLE ONLY cms_title ALTER COLUMN id SET DEFAULT nextval('cms_title_id_seq'::regclass);
 ;   ALTER TABLE public.cms_title ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            v	           2604    108184    cms_treenode id    DEFAULT     d   ALTER TABLE ONLY cms_treenode ALTER COLUMN id SET DEFAULT nextval('cms_treenode_id_seq'::regclass);
 >   ALTER TABLE public.cms_treenode ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            u	           2604    108137    cms_urlconfrevision id    DEFAULT     r   ALTER TABLE ONLY cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('cms_urlconfrevision_id_seq'::regclass);
 E   ALTER TABLE public.cms_urlconfrevision ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231            t	           2604    107798    cms_usersettings id    DEFAULT     l   ALTER TABLE ONLY cms_usersettings ALTER COLUMN id SET DEFAULT nextval('cms_usersettings_id_seq'::regclass);
 B   ALTER TABLE public.cms_usersettings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    227    228            �	           2604    109327    contact_me_plugin_message id    DEFAULT     ~   ALTER TABLE ONLY contact_me_plugin_message ALTER COLUMN id SET DEFAULT nextval('contact_me_plugin_message_id_seq'::regclass);
 K   ALTER TABLE public.contact_me_plugin_message ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    288    289    289            d	           2604    107539    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            ]	           2604    107425    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    188    188            \	           2604    107414    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185    186            f	           2604    107563    django_site id    DEFAULT     b   ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204            �	           2604    108861    djangocms_snippet_snippet id    DEFAULT     ~   ALTER TABLE ONLY djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('djangocms_snippet_snippet_id_seq'::regclass);
 K   ALTER TABLE public.djangocms_snippet_snippet ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    257    256    257            �	           2604    109048    easy_thumbnails_source id    DEFAULT     x   ALTER TABLE ONLY easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    264    263    264            �	           2604    109056    easy_thumbnails_thumbnail id    DEFAULT     ~   ALTER TABLE ONLY easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    265    266    266            �	           2604    109082 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    267    268    268            y	           2604    108247    filer_clipboard id    DEFAULT     j   ALTER TABLE ONLY filer_clipboard ALTER COLUMN id SET DEFAULT nextval('filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236    237            z	           2604    108255    filer_clipboarditem id    DEFAULT     r   ALTER TABLE ONLY filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239            {	           2604    108263    filer_file id    DEFAULT     `   ALTER TABLE ONLY filer_file ALTER COLUMN id SET DEFAULT nextval('filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            |	           2604    108274    filer_folder id    DEFAULT     d   ALTER TABLE ONLY filer_folder ALTER COLUMN id SET DEFAULT nextval('filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            �	           2604    108286    filer_folderpermission id    DEFAULT     x   ALTER TABLE ONLY filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            �	           2604    108384    filer_thumbnailoption id    DEFAULT     v   ALTER TABLE ONLY filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    247    248            �	           2604    109099    menus_cachekey id    DEFAULT     h   ALTER TABLE ONLY menus_cachekey ALTER COLUMN id SET DEFAULT nextval('menus_cachekey_id_seq'::regclass);
 @   ALTER TABLE public.menus_cachekey ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    270    269    270            �	           2604    109230    portfolio_app_mediaasset id    DEFAULT     |   ALTER TABLE ONLY portfolio_app_mediaasset ALTER COLUMN id SET DEFAULT nextval('portfolio_app_mediaasset_id_seq'::regclass);
 J   ALTER TABLE public.portfolio_app_mediaasset ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    279    280    280            �	           2604    109252    portfolio_app_project_tags id    DEFAULT     �   ALTER TABLE ONLY portfolio_app_project_tags ALTER COLUMN id SET DEFAULT nextval('portfolio_app_project_tags_id_seq'::regclass);
 L   ALTER TABLE public.portfolio_app_project_tags ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    284    283    284            �	           2604    109416    services_plugin_serviceitem id    DEFAULT     �   ALTER TABLE ONLY services_plugin_serviceitem ALTER COLUMN id SET DEFAULT nextval('services_plugin_serviceitem_id_seq'::regclass);
 M   ALTER TABLE public.services_plugin_serviceitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    295    296    296            �	           2604    109384 %   testimonial_plugin_testimonialitem id    DEFAULT     �   ALTER TABLE ONLY testimonial_plugin_testimonialitem ALTER COLUMN id SET DEFAULT nextval('testimonial_plugin_testimonialitem_id_seq'::regclass);
 T   ALTER TABLE public.testimonial_plugin_testimonialitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    293    292    293            �          0    109136    about_me_plugin_aboutme 
   TABLE DATA               Z   COPY about_me_plugin_aboutme (id, title, description, created_at, updated_at) FROM stdin;
    public       postgres    false    274   �      A           0    0    about_me_plugin_aboutme_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('about_me_plugin_aboutme_id_seq', 1, true);
            public       postgres    false    273            �          0    109147    about_me_plugin_skill 
   TABLE DATA               f   COPY about_me_plugin_skill (id, name, percentage, about_me_id_id, created_at, updated_at) FROM stdin;
    public       postgres    false    276   ��      B           0    0    about_me_plugin_skill_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('about_me_plugin_skill_id_seq', 3, true);
            public       postgres    false    275            �          0    109155    about_me_plugin_statistic 
   TABLE DATA               s   COPY about_me_plugin_statistic (id, title, statistic, about_me_id_id, created_at, updated_at, fa_icon) FROM stdin;
    public       postgres    false    278   +�      C           0    0     about_me_plugin_statistic_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('about_me_plugin_statistic_id_seq', 4, true);
            public       postgres    false    277            �          0    108062    aldryn_style_style 
   TABLE DATA               �   COPY aldryn_style_style (label, cmsplugin_ptr_id, class_name, id_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_class_names) FROM stdin;
    public       postgres    false    229   �      �          0    107440 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    192   �      D           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    191            �          0    107450    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   ,�      E           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    193            �          0    107432    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   I�      F           0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 200, true);
            public       postgres    false    189            �          0    107458 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196   ��      �          0    107468    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198   d�      G           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    197            H           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       postgres    false    195            �          0    107476    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   ��      I           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            �          0    107579    cms_aliaspluginmodel 
   TABLE DATA               Z   COPY cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
    public       postgres    false    207   ��      �          0    107568    cms_cmsplugin 
   TABLE DATA               �   COPY cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
    public       postgres    false    206   ��      J           0    0    cms_cmsplugin_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('cms_cmsplugin_id_seq', 63, true);
            public       postgres    false    205            �          0    107586    cms_globalpagepermission 
   TABLE DATA               �   COPY cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
    public       postgres    false    209   ��      K           0    0    cms_globalpagepermission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('cms_globalpagepermission_id_seq', 1, false);
            public       postgres    false    208            �          0    107594    cms_globalpagepermission_sites 
   TABLE DATA               W   COPY cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
    public       postgres    false    211   �      L           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('cms_globalpagepermission_sites_id_seq', 1, false);
            public       postgres    false    210            �          0    107602    cms_page 
   TABLE DATA               y  COPY cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
    public       postgres    false    213   2�      M           0    0    cms_page_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('cms_page_id_seq', 8, true);
            public       postgres    false    212            �          0    107750    cms_page_placeholders 
   TABLE DATA               E   COPY cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
    public       postgres    false    221   ��      N           0    0    cms_page_placeholders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('cms_page_placeholders_id_seq', 34, true);
            public       postgres    false    220            �          0    107620    cms_pagepermission 
   TABLE DATA               �   COPY cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
    public       postgres    false    215   *�      O           0    0    cms_pagepermission_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('cms_pagepermission_id_seq', 1, false);
            public       postgres    false    214            �          0    107729    cms_pageuser 
   TABLE DATA               ;   COPY cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    216   G�      �          0    107734    cms_pageusergroup 
   TABLE DATA               A   COPY cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    217   d�      �          0    107741    cms_placeholder 
   TABLE DATA               ;   COPY cms_placeholder (id, slot, default_width) FROM stdin;
    public       postgres    false    219   ��      P           0    0    cms_placeholder_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('cms_placeholder_id_seq', 35, true);
            public       postgres    false    218            �          0    107760    cms_placeholderreference 
   TABLE DATA               W   COPY cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
    public       postgres    false    222   N�      �          0    107767    cms_staticplaceholder 
   TABLE DATA               n   COPY cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
    public       postgres    false    224   k�      Q           0    0    cms_staticplaceholder_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('cms_staticplaceholder_id_seq', 1, false);
            public       postgres    false    223            �          0    107780 	   cms_title 
   TABLE DATA               �   COPY cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
    public       postgres    false    226   ��      R           0    0    cms_title_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('cms_title_id_seq', 8, true);
            public       postgres    false    225            �          0    108181    cms_treenode 
   TABLE DATA               N   COPY cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
    public       postgres    false    233   i�      S           0    0    cms_treenode_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('cms_treenode_id_seq', 4, true);
            public       postgres    false    232            �          0    108134    cms_urlconfrevision 
   TABLE DATA               4   COPY cms_urlconfrevision (id, revision) FROM stdin;
    public       postgres    false    231   ��      T           0    0    cms_urlconfrevision_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('cms_urlconfrevision_id_seq', 1, false);
            public       postgres    false    230            �          0    107795    cms_usersettings 
   TABLE DATA               H   COPY cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
    public       postgres    false    228   �      U           0    0    cms_usersettings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('cms_usersettings_id_seq', 1, true);
            public       postgres    false    227            	          0    109343 #   contact_me_plugin_callactionsection 
   TABLE DATA               q   COPY contact_me_plugin_callactionsection (cmsplugin_ptr_id, title, message, image, background_image) FROM stdin;
    public       postgres    false    290   �                0    109309    contact_me_plugin_contactme 
   TABLE DATA               W   COPY contact_me_plugin_contactme (cmsplugin_ptr_id, phone, address, email) FROM stdin;
    public       postgres    false    286   �                0    109317    contact_me_plugin_googlemap 
   TABLE DATA               I   COPY contact_me_plugin_googlemap (cmsplugin_ptr_id, address) FROM stdin;
    public       postgres    false    287   O�                0    109324    contact_me_plugin_message 
   TABLE DATA               ^   COPY contact_me_plugin_message (id, name, email, message, created_at, updated_at) FROM stdin;
    public       postgres    false    289   ��      V           0    0     contact_me_plugin_message_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('contact_me_plugin_message_id_seq', 3, true);
            public       postgres    false    288            �          0    107536    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   t�      W           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 29, true);
            public       postgres    false    201            �          0    107422    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188   ��      X           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 67, true);
            public       postgres    false    187            �          0    107411    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   ��      Y           0    0    django_migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_migrations_id_seq', 126, true);
            public       postgres    false    185            �          0    109106    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    271   ��      �          0    107560    django_site 
   TABLE DATA               0   COPY django_site (id, domain, name) FROM stdin;
    public       postgres    false    204   k�      Z           0    0    django_site_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('django_site_id_seq', 1, true);
            public       postgres    false    203            �          0    108212    djangocms_column_column 
   TABLE DATA               C   COPY djangocms_column_column (cmsplugin_ptr_id, width) FROM stdin;
    public       postgres    false    234   ��      �          0    108217    djangocms_column_multicolumns 
   TABLE DATA               B   COPY djangocms_column_multicolumns (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    235   ��      �          0    108408    djangocms_file_file 
   TABLE DATA               �   COPY djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
    public       postgres    false    249   Ҩ      �          0    108477    djangocms_file_folder 
   TABLE DATA               |   COPY djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
    public       postgres    false    250   �      �          0    108497    djangocms_googlemap_googlemap 
   TABLE DATA               -  COPY djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
    public       postgres    false    251   �      �          0    108586 #   djangocms_googlemap_googlemapmarker 
   TABLE DATA               �   COPY djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
    public       postgres    false    252   )�      �          0    108594 "   djangocms_googlemap_googlemaproute 
   TABLE DATA               p   COPY djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
    public       postgres    false    253   F�      �          0    108619    djangocms_link_link 
   TABLE DATA               �   COPY djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template) FROM stdin;
    public       postgres    false    254   c�      �          0    108696    djangocms_picture_picture 
   TABLE DATA               %  COPY djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template) FROM stdin;
    public       postgres    false    255   ��      �          0    108858    djangocms_snippet_snippet 
   TABLE DATA               L   COPY djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
    public       postgres    false    257   ��      [           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('djangocms_snippet_snippet_id_seq', 1, false);
            public       postgres    false    256            �          0    108869    djangocms_snippet_snippetptr 
   TABLE DATA               M   COPY djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
    public       postgres    false    258   ��      �          0    108914    djangocms_text_ckeditor_text 
   TABLE DATA               G   COPY djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
    public       postgres    false    259   ש      �          0    108937    djangocms_video_videoplayer 
   TABLE DATA               t   COPY djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template) FROM stdin;
    public       postgres    false    260   ��      �          0    109004    djangocms_video_videosource 
   TABLE DATA               z   COPY djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
    public       postgres    false    261   �      �          0    109012    djangocms_video_videotrack 
   TABLE DATA               i   COPY djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
    public       postgres    false    262   .�      �          0    109045    easy_thumbnails_source 
   TABLE DATA               K   COPY easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    264   K�      \           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 1, false);
            public       postgres    false    263            �          0    109053    easy_thumbnails_thumbnail 
   TABLE DATA               Y   COPY easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    266   h�      ]           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 1, false);
            public       postgres    false    265            �          0    109079 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               W   COPY easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    268   ��      ^           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    267            �          0    108244    filer_clipboard 
   TABLE DATA               /   COPY filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    237   ��      _           0    0    filer_clipboard_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('filer_clipboard_id_seq', 1, false);
            public       postgres    false    236            �          0    108252    filer_clipboarditem 
   TABLE DATA               A   COPY filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    239   ��      `           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    238            �          0    108260 
   filer_file 
   TABLE DATA               �   COPY filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    241   ܪ      a           0    0    filer_file_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('filer_file_id_seq', 1, false);
            public       postgres    false    240            �          0    108271    filer_folder 
   TABLE DATA                  COPY filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    243   ��      b           0    0    filer_folder_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('filer_folder_id_seq', 1, false);
            public       postgres    false    242            �          0    108283    filer_folderpermission 
   TABLE DATA               �   COPY filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    245   �      c           0    0    filer_folderpermission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('filer_folderpermission_id_seq', 1, false);
            public       postgres    false    244            �          0    108291    filer_image 
   TABLE DATA               �   COPY filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    246   3�      �          0    108381    filer_thumbnailoption 
   TABLE DATA               P   COPY filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    248   P�      d           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    247            �          0    109121    hero_area_plugin_heroarea 
   TABLE DATA               z   COPY hero_area_plugin_heroarea (cmsplugin_ptr_id, intro_title, title, background_image, youtube_introduction) FROM stdin;
    public       postgres    false    272   m�                0    109299    hero_area_plugin_shortheroarea 
   TABLE DATA               o   COPY hero_area_plugin_shortheroarea (cmsplugin_ptr_id, page_title, page_message, background_image) FROM stdin;
    public       postgres    false    285   ��      �          0    109096    menus_cachekey 
   TABLE DATA               :   COPY menus_cachekey (id, language, site, key) FROM stdin;
    public       postgres    false    270   ��      e           0    0    menus_cachekey_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('menus_cachekey_id_seq', 38, true);
            public       postgres    false    269            
          0    109364    portfolio_app_latestworksection 
   TABLE DATA               M   COPY portfolio_app_latestworksection (cmsplugin_ptr_id, message) FROM stdin;
    public       postgres    false    291   ��      �          0    109227    portfolio_app_mediaasset 
   TABLE DATA               d   COPY portfolio_app_mediaasset (id, name, type, media_asset, youtube_url, project_id_id) FROM stdin;
    public       postgres    false    280   ��      f           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('portfolio_app_mediaasset_id_seq', 6, true);
            public       postgres    false    279                       0    109234    portfolio_app_project 
   TABLE DATA               �   COPY portfolio_app_project (cmsplugin_ptr_id, slug, title, sub_title, short_description, description, skills, roles, client, length, demo_url, youtube_embed_url, top_image, created_at, updated_at) FROM stdin;
    public       postgres    false    281   �                0    109249    portfolio_app_project_tags 
   TABLE DATA               E   COPY portfolio_app_project_tags (id, project_id, tag_id) FROM stdin;
    public       postgres    false    284   �      g           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('portfolio_app_project_tags_id_seq', 4, true);
            public       postgres    false    283                      0    109242    portfolio_app_tag 
   TABLE DATA               <   COPY portfolio_app_tag (cmsplugin_ptr_id, name) FROM stdin;
    public       postgres    false    282   7�                0    109413    services_plugin_serviceitem 
   TABLE DATA               m   COPY services_plugin_serviceitem (id, title, content, icon_class_name, services_component_id_id) FROM stdin;
    public       postgres    false    296   {�      h           0    0 "   services_plugin_serviceitem_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('services_plugin_serviceitem_id_seq', 25, true);
            public       postgres    false    295                      0    109422 !   services_plugin_servicescomponent 
   TABLE DATA               F   COPY services_plugin_servicescomponent (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    297   H�                0    109401 '   testimonial_plugin_testimonialcomponent 
   TABLE DATA               ^   COPY testimonial_plugin_testimonialcomponent (cmsplugin_ptr_id, background_image) FROM stdin;
    public       postgres    false    294   k�                0    109381 "   testimonial_plugin_testimonialitem 
   TABLE DATA               [   COPY testimonial_plugin_testimonialitem (id, name, content, testimonial_id_id) FROM stdin;
    public       postgres    false    293   ��      i           0    0 )   testimonial_plugin_testimonialitem_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('testimonial_plugin_testimonialitem_id_seq', 10, true);
            public       postgres    false    292            �
           2606    109144 4   about_me_plugin_aboutme about_me_plugin_aboutme_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY about_me_plugin_aboutme
    ADD CONSTRAINT about_me_plugin_aboutme_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.about_me_plugin_aboutme DROP CONSTRAINT about_me_plugin_aboutme_pkey;
       public         postgres    false    274    274            �
           2606    109152 0   about_me_plugin_skill about_me_plugin_skill_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY about_me_plugin_skill
    ADD CONSTRAINT about_me_plugin_skill_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.about_me_plugin_skill DROP CONSTRAINT about_me_plugin_skill_pkey;
       public         postgres    false    276    276            �
           2606    109160 8   about_me_plugin_statistic about_me_plugin_statistic_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY about_me_plugin_statistic
    ADD CONSTRAINT about_me_plugin_statistic_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.about_me_plugin_statistic DROP CONSTRAINT about_me_plugin_statistic_pkey;
       public         postgres    false    278    278            )
           2606    108069 *   aldryn_style_style aldryn_style_style_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_pkey;
       public         postgres    false    229    229            �	           2606    107447    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192    192            �	           2606    107502 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194    194            �	           2606    107455 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194    194            �	           2606    107445    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192    192            �	           2606    107488 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190    190            �	           2606    107437 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190    190            �	           2606    107473 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    198    198            �	           2606    107517 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    198    198    198            �	           2606    107463    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    196    196            �	           2606    107481 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    200    200            �	           2606    107531 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    200    200    200            �	           2606    108077     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    196    196            �	           2606    107583 .   cms_aliaspluginmodel cms_aliaspluginmodel_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_pkey;
       public         postgres    false    207    207            �	           2606    108055 .   cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq 
   CONSTRAINT     b   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);
 X   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_path_4917bb44_uniq;
       public         postgres    false    206    206            �	           2606    107578     cms_cmsplugin cms_cmsplugin_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_pkey;
       public         postgres    false    206    206            �	           2606    107674 ^   cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq;
       public         postgres    false    211    211    211            �	           2606    107591 6   cms_globalpagepermission cms_globalpagepermission_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_pkey;
       public         postgres    false    209    209            �	           2606    107599 B   cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_sites_pkey;
       public         postgres    false    211    211            �	           2606    108192 :   cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);
 d   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq;
       public         postgres    false    213    213    213            �	           2606    107615    cms_page cms_page_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_pkey;
       public         postgres    false    213    213            
           2606    107838 P   cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);
 z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq;
       public         postgres    false    221    221    221            
           2606    107755 0   cms_page_placeholders cms_page_placeholders_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_pkey;
       public         postgres    false    221    221            �	           2606    107617 )   cms_page cms_page_publisher_public_id_key 
   CONSTRAINT     l   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);
 S   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_key;
       public         postgres    false    213    213            �	           2606    107625 *   cms_pagepermission cms_pagepermission_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_pkey;
       public         postgres    false    215    215            �	           2606    107733    cms_pageuser cms_pageuser_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);
 H   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_pkey;
       public         postgres    false    216    216            �	           2606    107738 (   cms_pageusergroup cms_pageusergroup_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);
 R   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_pkey;
       public         postgres    false    217    217             
           2606    107747 $   cms_placeholder cms_placeholder_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cms_placeholder DROP CONSTRAINT cms_placeholder_pkey;
       public         postgres    false    219    219            

           2606    107764 6   cms_placeholderreference cms_placeholderreference_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderreference_pkey;
       public         postgres    false    222    222            
           2606    107777 F   cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);
 p   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq;
       public         postgres    false    224    224    224            
           2606    107775 0   cms_staticplaceholder cms_staticplaceholder_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_pkey;
       public         postgres    false    224    224            
           2606    107792 2   cms_title cms_title_language_page_id_61aaf084_uniq 
   CONSTRAINT     s   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);
 \   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_language_page_id_61aaf084_uniq;
       public         postgres    false    226    226    226            
           2606    107788    cms_title cms_title_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_pkey;
       public         postgres    false    226    226            
           2606    107790 +   cms_title cms_title_publisher_public_id_key 
   CONSTRAINT     n   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);
 U   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_key;
       public         postgres    false    226    226            /
           2606    108190 "   cms_treenode cms_treenode_path_key 
   CONSTRAINT     V   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);
 L   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_path_key;
       public         postgres    false    233    233            1
           2606    108188    cms_treenode cms_treenode_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_pkey;
       public         postgres    false    233    233            +
           2606    108139 ,   cms_urlconfrevision cms_urlconfrevision_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cms_urlconfrevision DROP CONSTRAINT cms_urlconfrevision_pkey;
       public         postgres    false    231    231            %
           2606    107800 &   cms_usersettings cms_usersettings_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_pkey;
       public         postgres    false    228    228            '
           2606    107802 -   cms_usersettings cms_usersettings_user_id_key 
   CONSTRAINT     d   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_key;
       public         postgres    false    228    228            �
           2606    109350 L   contact_me_plugin_callactionsection contact_me_plugin_callactionsection_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_callactionsection
    ADD CONSTRAINT contact_me_plugin_callactionsection_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.contact_me_plugin_callactionsection DROP CONSTRAINT contact_me_plugin_callactionsection_pkey;
       public         postgres    false    290    290            �
           2606    109316 <   contact_me_plugin_contactme contact_me_plugin_contactme_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_contactme
    ADD CONSTRAINT contact_me_plugin_contactme_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.contact_me_plugin_contactme DROP CONSTRAINT contact_me_plugin_contactme_pkey;
       public         postgres    false    286    286            �
           2606    109321 <   contact_me_plugin_googlemap contact_me_plugin_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_googlemap
    ADD CONSTRAINT contact_me_plugin_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.contact_me_plugin_googlemap DROP CONSTRAINT contact_me_plugin_googlemap_pkey;
       public         postgres    false    287    287            �
           2606    109332 8   contact_me_plugin_message contact_me_plugin_message_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY contact_me_plugin_message
    ADD CONSTRAINT contact_me_plugin_message_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.contact_me_plugin_message DROP CONSTRAINT contact_me_plugin_message_pkey;
       public         postgres    false    289    289            �	           2606    107545 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202    202            �	           2606    107429 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188    188            �	           2606    107427 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188    188            �	           2606    107419 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186    186            �
           2606    109113 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    271    271            �	           2606    109117 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     b   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         postgres    false    204    204            �	           2606    107565    django_site django_site_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    204    204            4
           2606    108216 4   djangocms_column_column djangocms_column_column_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY djangocms_column_column
    ADD CONSTRAINT djangocms_column_column_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_column_pkey;
       public         postgres    false    234    234            6
           2606    108221 @   djangocms_column_multicolumns djangocms_column_multicolumns_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_multicolumns_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_multicolumns_pkey;
       public         postgres    false    235    235            X
           2606    108412 ,   djangocms_file_file djangocms_file_file_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_pkey;
       public         postgres    false    249    249            [
           2606    108484 0   djangocms_file_folder djangocms_file_folder_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_pkey;
       public         postgres    false    250    250            ]
           2606    108505 @   djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap_googlemap_pkey;
       public         postgres    false    251    251            `
           2606    108593 L   djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap_googlemapmarker_pkey;
       public         postgres    false    252    252            b
           2606    108601 J   djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);
 t   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap_googlemaproute_pkey;
       public         postgres    false    253    253            e
           2606    108626 ,   djangocms_link_link djangocms_link_link_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_pkey;
       public         postgres    false    254    254            i
           2606    108703 8   djangocms_picture_picture djangocms_picture_picture_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_pkey;
       public         postgres    false    255    255            m
           2606    108868 <   djangocms_snippet_snippet djangocms_snippet_snippet_name_key 
   CONSTRAINT     p   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_name_key;
       public         postgres    false    257    257            o
           2606    108866 8   djangocms_snippet_snippet djangocms_snippet_snippet_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_pkey;
       public         postgres    false    257    257            r
           2606    108907 F   djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq 
   CONSTRAINT     z   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);
 p   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq;
       public         postgres    false    257    257            t
           2606    108873 >   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_pkey;
       public         postgres    false    258    258            w
           2606    108921 >   djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckeditor_text_pkey;
       public         postgres    false    259    259            y
           2606    108946 6   djangocms_video_videoplayer djangocms_video_video_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_video_pkey;
       public         postgres    false    260    260            |
           2606    109011 <   djangocms_video_videosource djangocms_video_videosource_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_videosource_pkey;
       public         postgres    false    261    261            
           2606    109019 :   djangocms_video_videotrack djangocms_video_videotrack_pkey 
   CONSTRAINT        ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);
 d   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_pkey;
       public         postgres    false    262    262            �
           2606    109050 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    264    264            �
           2606    109062 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    264    264    264            �
           2606    109060 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    266    266    266    266            �
           2606    109058 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    266    266            �
           2606    109086 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    268    268            �
           2606    109088 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    268    268            8
           2606    108249 $   filer_clipboard filer_clipboard_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         postgres    false    237    237            =
           2606    108257 ,   filer_clipboarditem filer_clipboarditem_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         postgres    false    239    239            A
           2606    108268    filer_file filer_file_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         postgres    false    241    241            H
           2606    108290 6   filer_folder filer_folder_parent_id_name_bc773258_uniq 
   CONSTRAINT     u   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);
 `   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_name_bc773258_uniq;
       public         postgres    false    243    243    243            J
           2606    108280    filer_folder filer_folder_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         postgres    false    243    243            P
           2606    108288 2   filer_folderpermission filer_folderpermission_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         postgres    false    245    245            S
           2606    108298    filer_image filer_image_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         postgres    false    246    246            U
           2606    108386 0   filer_thumbnailoption filer_thumbnailoption_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         postgres    false    248    248            �
           2606    109128 8   hero_area_plugin_heroarea hero_area_plugin_heroarea_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY hero_area_plugin_heroarea
    ADD CONSTRAINT hero_area_plugin_heroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.hero_area_plugin_heroarea DROP CONSTRAINT hero_area_plugin_heroarea_pkey;
       public         postgres    false    272    272            �
           2606    109303 B   hero_area_plugin_shortheroarea hero_area_plugin_shortheroarea_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY hero_area_plugin_shortheroarea
    ADD CONSTRAINT hero_area_plugin_shortheroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 l   ALTER TABLE ONLY public.hero_area_plugin_shortheroarea DROP CONSTRAINT hero_area_plugin_shortheroarea_pkey;
       public         postgres    false    285    285            �
           2606    109105 "   menus_cachekey menus_cachekey_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.menus_cachekey DROP CONSTRAINT menus_cachekey_pkey;
       public         postgres    false    270    270            �
           2606    109368 D   portfolio_app_latestworksection portfolio_app_latestworksection_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_latestworksection
    ADD CONSTRAINT portfolio_app_latestworksection_pkey PRIMARY KEY (cmsplugin_ptr_id);
 n   ALTER TABLE ONLY public.portfolio_app_latestworksection DROP CONSTRAINT portfolio_app_latestworksection_pkey;
       public         postgres    false    291    291            �
           2606    109233 6   portfolio_app_mediaasset portfolio_app_mediaasset_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaasset_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaasset_pkey;
       public         postgres    false    280    280            �
           2606    109241 0   portfolio_app_project portfolio_app_project_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY portfolio_app_project
    ADD CONSTRAINT portfolio_app_project_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_project_pkey;
       public         postgres    false    281    281            �
           2606    109254 :   portfolio_app_project_tags portfolio_app_project_tags_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_pkey;
       public         postgres    false    284    284            �
           2606    109278 U   portfolio_app_project_tags portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq UNIQUE (project_id, tag_id);
    ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq;
       public         postgres    false    284    284    284            �
           2606    109246 (   portfolio_app_tag portfolio_app_tag_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_pkey PRIMARY KEY (cmsplugin_ptr_id);
 R   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_pkey;
       public         postgres    false    282    282            �
           2606    109421 <   services_plugin_serviceitem services_plugin_serviceitem_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY services_plugin_serviceitem
    ADD CONSTRAINT services_plugin_serviceitem_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.services_plugin_serviceitem DROP CONSTRAINT services_plugin_serviceitem_pkey;
       public         postgres    false    296    296            �
           2606    109426 H   services_plugin_servicescomponent services_plugin_servicescomponent_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY services_plugin_servicescomponent
    ADD CONSTRAINT services_plugin_servicescomponent_pkey PRIMARY KEY (cmsplugin_ptr_id);
 r   ALTER TABLE ONLY public.services_plugin_servicescomponent DROP CONSTRAINT services_plugin_servicescomponent_pkey;
       public         postgres    false    297    297            �
           2606    109405 T   testimonial_plugin_testimonialcomponent testimonial_plugin_testimonialcomponent_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY testimonial_plugin_testimonialcomponent
    ADD CONSTRAINT testimonial_plugin_testimonialcomponent_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ~   ALTER TABLE ONLY public.testimonial_plugin_testimonialcomponent DROP CONSTRAINT testimonial_plugin_testimonialcomponent_pkey;
       public         postgres    false    294    294            �
           2606    109389 J   testimonial_plugin_testimonialitem testimonial_plugin_testimonialitem_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY testimonial_plugin_testimonialitem
    ADD CONSTRAINT testimonial_plugin_testimonialitem_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.testimonial_plugin_testimonialitem DROP CONSTRAINT testimonial_plugin_testimonialitem_pkey;
       public         postgres    false    293    293            �
           1259    109166 -   about_me_plugin_skill_about_me_id_id_ca9ce902    INDEX     r   CREATE INDEX about_me_plugin_skill_about_me_id_id_ca9ce902 ON about_me_plugin_skill USING btree (about_me_id_id);
 A   DROP INDEX public.about_me_plugin_skill_about_me_id_id_ca9ce902;
       public         postgres    false    276            �
           1259    109172 1   about_me_plugin_statistic_about_me_id_id_73d9f336    INDEX     z   CREATE INDEX about_me_plugin_statistic_about_me_id_id_73d9f336 ON about_me_plugin_statistic USING btree (about_me_id_id);
 E   DROP INDEX public.about_me_plugin_statistic_about_me_id_id_73d9f336;
       public         postgres    false    278            �	           1259    107490    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            �	           1259    107503 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            �	           1259    107504 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            �	           1259    107489 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    190            �	           1259    107519 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    198            �	           1259    107518 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    198            �	           1259    107533 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    200            �	           1259    107532 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    200            �	           1259    108078     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    196            �	           1259    107847 2   cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a    INDEX     |   CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON cms_aliaspluginmodel USING btree (alias_placeholder_id);
 F   DROP INDEX public.cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a;
       public         postgres    false    207            �	           1259    107644 '   cms_aliaspluginmodel_plugin_id_9867676e    INDEX     f   CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON cms_aliaspluginmodel USING btree (plugin_id);
 ;   DROP INDEX public.cms_aliaspluginmodel_plugin_id_9867676e;
       public         postgres    false    207            �	           1259    107626    cms_cmsplugin_language_bbea8a48    INDEX     V   CREATE INDEX cms_cmsplugin_language_bbea8a48 ON cms_cmsplugin USING btree (language);
 3   DROP INDEX public.cms_cmsplugin_language_bbea8a48;
       public         postgres    false    206            �	           1259    107627 $   cms_cmsplugin_language_bbea8a48_like    INDEX     o   CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON cms_cmsplugin USING btree (language varchar_pattern_ops);
 8   DROP INDEX public.cms_cmsplugin_language_bbea8a48_like;
       public         postgres    false    206            �	           1259    107645     cms_cmsplugin_parent_id_fd3bd9dd    INDEX     X   CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON cms_cmsplugin USING btree (parent_id);
 4   DROP INDEX public.cms_cmsplugin_parent_id_fd3bd9dd;
       public         postgres    false    206            �	           1259    108056     cms_cmsplugin_path_4917bb44_like    INDEX     g   CREATE INDEX cms_cmsplugin_path_4917bb44_like ON cms_cmsplugin USING btree (path varchar_pattern_ops);
 4   DROP INDEX public.cms_cmsplugin_path_4917bb44_like;
       public         postgres    false    206            �	           1259    107841 %   cms_cmsplugin_placeholder_id_0bfa3b26    INDEX     b   CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON cms_cmsplugin USING btree (placeholder_id);
 9   DROP INDEX public.cms_cmsplugin_placeholder_id_0bfa3b26;
       public         postgres    false    206            �	           1259    107628 "   cms_cmsplugin_plugin_type_94e96ebf    INDEX     \   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON cms_cmsplugin USING btree (plugin_type);
 6   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf;
       public         postgres    false    206            �	           1259    107629 '   cms_cmsplugin_plugin_type_94e96ebf_like    INDEX     u   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);
 ;   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf_like;
       public         postgres    false    206            �	           1259    107661 *   cms_globalpagepermission_group_id_991b4733    INDEX     l   CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON cms_globalpagepermission USING btree (group_id);
 >   DROP INDEX public.cms_globalpagepermission_group_id_991b4733;
       public         postgres    false    209            �	           1259    107675 ?   cms_globalpagepermission_sites_globalpagepermission_id_46bd2681    INDEX     �   CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON cms_globalpagepermission_sites USING btree (globalpagepermission_id);
 S   DROP INDEX public.cms_globalpagepermission_sites_globalpagepermission_id_46bd2681;
       public         postgres    false    211            �	           1259    107676 /   cms_globalpagepermission_sites_site_id_00460b53    INDEX     v   CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON cms_globalpagepermission_sites USING btree (site_id);
 C   DROP INDEX public.cms_globalpagepermission_sites_site_id_00460b53;
       public         postgres    false    211            �	           1259    107662 )   cms_globalpagepermission_user_id_a227cee1    INDEX     j   CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON cms_globalpagepermission USING btree (user_id);
 =   DROP INDEX public.cms_globalpagepermission_user_id_a227cee1;
       public         postgres    false    209            �	           1259    107702 "   cms_page_application_urls_9ef47497    INDEX     \   CREATE INDEX cms_page_application_urls_9ef47497 ON cms_page USING btree (application_urls);
 6   DROP INDEX public.cms_page_application_urls_9ef47497;
       public         postgres    false    213            �	           1259    107703 '   cms_page_application_urls_9ef47497_like    INDEX     u   CREATE INDEX cms_page_application_urls_9ef47497_like ON cms_page USING btree (application_urls varchar_pattern_ops);
 ;   DROP INDEX public.cms_page_application_urls_9ef47497_like;
       public         postgres    false    213            �	           1259    107694    cms_page_in_navigation_01c24279    INDEX     V   CREATE INDEX cms_page_in_navigation_01c24279 ON cms_page USING btree (in_navigation);
 3   DROP INDEX public.cms_page_in_navigation_01c24279;
       public         postgres    false    213            �	           1259    107701    cms_page_is_home_edadca07    INDEX     J   CREATE INDEX cms_page_is_home_edadca07 ON cms_page USING btree (is_home);
 -   DROP INDEX public.cms_page_is_home_edadca07;
       public         postgres    false    213            �	           1259    107700 *   cms_page_limit_visibility_in_menu_30db6aa6    INDEX     l   CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON cms_page USING btree (limit_visibility_in_menu);
 >   DROP INDEX public.cms_page_limit_visibility_in_menu_30db6aa6;
       public         postgres    false    213            �	           1259    107698 &   cms_page_navigation_extenders_c24af8dd    INDEX     d   CREATE INDEX cms_page_navigation_extenders_c24af8dd ON cms_page USING btree (navigation_extenders);
 :   DROP INDEX public.cms_page_navigation_extenders_c24af8dd;
       public         postgres    false    213            �	           1259    107699 +   cms_page_navigation_extenders_c24af8dd_like    INDEX     }   CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON cms_page USING btree (navigation_extenders varchar_pattern_ops);
 ?   DROP INDEX public.cms_page_navigation_extenders_c24af8dd_like;
       public         postgres    false    213            �	           1259    108206    cms_page_node_id_c87b85a9    INDEX     J   CREATE INDEX cms_page_node_id_c87b85a9 ON cms_page USING btree (node_id);
 -   DROP INDEX public.cms_page_node_id_c87b85a9;
       public         postgres    false    213            
           1259    107839 &   cms_page_placeholders_page_id_f2ce8dec    INDEX     d   CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON cms_page_placeholders USING btree (page_id);
 :   DROP INDEX public.cms_page_placeholders_page_id_f2ce8dec;
       public         postgres    false    221            
           1259    107840 -   cms_page_placeholders_placeholder_id_6b120886    INDEX     r   CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON cms_page_placeholders USING btree (placeholder_id);
 A   DROP INDEX public.cms_page_placeholders_placeholder_id_6b120886;
       public         postgres    false    221            �	           1259    107692 "   cms_page_publication_date_684fabf7    INDEX     \   CREATE INDEX cms_page_publication_date_684fabf7 ON cms_page USING btree (publication_date);
 6   DROP INDEX public.cms_page_publication_date_684fabf7;
       public         postgres    false    213            �	           1259    107693 &   cms_page_publication_end_date_12a0c46a    INDEX     d   CREATE INDEX cms_page_publication_end_date_12a0c46a ON cms_page USING btree (publication_end_date);
 :   DROP INDEX public.cms_page_publication_end_date_12a0c46a;
       public         postgres    false    213            �	           1259    107708 $   cms_page_publisher_is_draft_141cba60    INDEX     `   CREATE INDEX cms_page_publisher_is_draft_141cba60 ON cms_page USING btree (publisher_is_draft);
 8   DROP INDEX public.cms_page_publisher_is_draft_141cba60;
       public         postgres    false    213            �	           1259    107696    cms_page_reverse_id_ffc9ede2    INDEX     P   CREATE INDEX cms_page_reverse_id_ffc9ede2 ON cms_page USING btree (reverse_id);
 0   DROP INDEX public.cms_page_reverse_id_ffc9ede2;
       public         postgres    false    213            �	           1259    107697 !   cms_page_reverse_id_ffc9ede2_like    INDEX     i   CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON cms_page USING btree (reverse_id varchar_pattern_ops);
 5   DROP INDEX public.cms_page_reverse_id_ffc9ede2_like;
       public         postgres    false    213            �	           1259    107695    cms_page_soft_root_51efccbe    INDEX     N   CREATE INDEX cms_page_soft_root_51efccbe ON cms_page USING btree (soft_root);
 /   DROP INDEX public.cms_page_soft_root_51efccbe;
       public         postgres    false    213            �	           1259    107726 $   cms_pagepermission_group_id_af5af193    INDEX     `   CREATE INDEX cms_pagepermission_group_id_af5af193 ON cms_pagepermission USING btree (group_id);
 8   DROP INDEX public.cms_pagepermission_group_id_af5af193;
       public         postgres    false    215            �	           1259    107727 #   cms_pagepermission_page_id_0ae9a163    INDEX     ^   CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON cms_pagepermission USING btree (page_id);
 7   DROP INDEX public.cms_pagepermission_page_id_0ae9a163;
       public         postgres    false    215            �	           1259    107728 #   cms_pagepermission_user_id_0c7d2b3c    INDEX     ^   CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON cms_pagepermission USING btree (user_id);
 7   DROP INDEX public.cms_pagepermission_user_id_0c7d2b3c;
       public         postgres    false    215            �	           1259    107813 #   cms_pageuser_created_by_id_8e9fbf83    INDEX     ^   CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON cms_pageuser USING btree (created_by_id);
 7   DROP INDEX public.cms_pageuser_created_by_id_8e9fbf83;
       public         postgres    false    216            �	           1259    107824 (   cms_pageusergroup_created_by_id_7d57fa39    INDEX     h   CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON cms_pageusergroup USING btree (created_by_id);
 <   DROP INDEX public.cms_pageusergroup_created_by_id_7d57fa39;
       public         postgres    false    217            
           1259    107914    cms_placeholder_slot_0bc04d21    INDEX     R   CREATE INDEX cms_placeholder_slot_0bc04d21 ON cms_placeholder USING btree (slot);
 1   DROP INDEX public.cms_placeholder_slot_0bc04d21;
       public         postgres    false    219            
           1259    107913 "   cms_placeholder_slot_0bc04d21_like    INDEX     k   CREATE INDEX cms_placeholder_slot_0bc04d21_like ON cms_placeholder USING btree (slot varchar_pattern_ops);
 6   DROP INDEX public.cms_placeholder_slot_0bc04d21_like;
       public         postgres    false    219            
           1259    107863 4   cms_placeholderreference_placeholder_ref_id_244759b1    INDEX     �   CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON cms_placeholderreference USING btree (placeholder_ref_id);
 H   DROP INDEX public.cms_placeholderreference_placeholder_ref_id_244759b1;
       public         postgres    false    222            
           1259    107879 '   cms_staticplaceholder_draft_id_5aee407b    INDEX     f   CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON cms_staticplaceholder USING btree (draft_id);
 ;   DROP INDEX public.cms_staticplaceholder_draft_id_5aee407b;
       public         postgres    false    224            
           1259    107880 (   cms_staticplaceholder_public_id_876aaa66    INDEX     h   CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON cms_staticplaceholder USING btree (public_id);
 <   DROP INDEX public.cms_staticplaceholder_public_id_876aaa66;
       public         postgres    false    224            
           1259    107881 &   cms_staticplaceholder_site_id_dc6a85b6    INDEX     d   CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON cms_staticplaceholder USING btree (site_id);
 :   DROP INDEX public.cms_staticplaceholder_site_id_dc6a85b6;
       public         postgres    false    224            
           1259    107898 $   cms_title_has_url_overwrite_ecf27bb9    INDEX     `   CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON cms_title USING btree (has_url_overwrite);
 8   DROP INDEX public.cms_title_has_url_overwrite_ecf27bb9;
       public         postgres    false    226            
           1259    107892    cms_title_language_50a0dfa1    INDEX     N   CREATE INDEX cms_title_language_50a0dfa1 ON cms_title USING btree (language);
 /   DROP INDEX public.cms_title_language_50a0dfa1;
       public         postgres    false    226            
           1259    107893     cms_title_language_50a0dfa1_like    INDEX     g   CREATE INDEX cms_title_language_50a0dfa1_like ON cms_title USING btree (language varchar_pattern_ops);
 4   DROP INDEX public.cms_title_language_50a0dfa1_like;
       public         postgres    false    226            
           1259    107901    cms_title_page_id_5fade2a3    INDEX     L   CREATE INDEX cms_title_page_id_5fade2a3 ON cms_title USING btree (page_id);
 .   DROP INDEX public.cms_title_page_id_5fade2a3;
       public         postgres    false    226            
           1259    107896    cms_title_path_c484314c    INDEX     F   CREATE INDEX cms_title_path_c484314c ON cms_title USING btree (path);
 +   DROP INDEX public.cms_title_path_c484314c;
       public         postgres    false    226            
           1259    107897    cms_title_path_c484314c_like    INDEX     _   CREATE INDEX cms_title_path_c484314c_like ON cms_title USING btree (path varchar_pattern_ops);
 0   DROP INDEX public.cms_title_path_c484314c_like;
       public         postgres    false    226            
           1259    107899 %   cms_title_publisher_is_draft_95874c88    INDEX     b   CREATE INDEX cms_title_publisher_is_draft_95874c88 ON cms_title USING btree (publisher_is_draft);
 9   DROP INDEX public.cms_title_publisher_is_draft_95874c88;
       public         postgres    false    226             
           1259    107900 "   cms_title_publisher_state_9a952b0f    INDEX     \   CREATE INDEX cms_title_publisher_state_9a952b0f ON cms_title USING btree (publisher_state);
 6   DROP INDEX public.cms_title_publisher_state_9a952b0f;
       public         postgres    false    226            !
           1259    107894    cms_title_slug_4947d146    INDEX     F   CREATE INDEX cms_title_slug_4947d146 ON cms_title USING btree (slug);
 +   DROP INDEX public.cms_title_slug_4947d146;
       public         postgres    false    226            "
           1259    107895    cms_title_slug_4947d146_like    INDEX     _   CREATE INDEX cms_title_slug_4947d146_like ON cms_title USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.cms_title_slug_4947d146_like;
       public         postgres    false    226            ,
           1259    108204    cms_treenode_parent_id_59bb02c4    INDEX     V   CREATE INDEX cms_treenode_parent_id_59bb02c4 ON cms_treenode USING btree (parent_id);
 3   DROP INDEX public.cms_treenode_parent_id_59bb02c4;
       public         postgres    false    233            -
           1259    108203    cms_treenode_path_6eb22885_like    INDEX     e   CREATE INDEX cms_treenode_path_6eb22885_like ON cms_treenode USING btree (path varchar_pattern_ops);
 3   DROP INDEX public.cms_treenode_path_6eb22885_like;
       public         postgres    false    233            2
           1259    108205    cms_treenode_site_id_d3f46985    INDEX     R   CREATE INDEX cms_treenode_site_id_d3f46985 ON cms_treenode USING btree (site_id);
 1   DROP INDEX public.cms_treenode_site_id_d3f46985;
       public         postgres    false    233            #
           1259    107912 &   cms_usersettings_clipboard_id_3ae17c19    INDEX     d   CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON cms_usersettings USING btree (clipboard_id);
 :   DROP INDEX public.cms_usersettings_clipboard_id_3ae17c19;
       public         postgres    false    228            �	           1259    107556 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            �	           1259    107557 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202            �
           1259    109115 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    271            �
           1259    109114 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    271            �	           1259    109118     django_site_domain_a2e37b91_like    INDEX     g   CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         postgres    false    204            V
           1259    108439 (   djangocms_file_file_file_src_id_74ac14a5    INDEX     h   CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON djangocms_file_file USING btree (file_src_id);
 <   DROP INDEX public.djangocms_file_file_file_src_id_74ac14a5;
       public         postgres    false    249            Y
           1259    108495 ,   djangocms_file_folder_folder_src_id_9558406a    INDEX     p   CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON djangocms_file_folder USING btree (folder_src_id);
 @   DROP INDEX public.djangocms_file_folder_folder_src_id_9558406a;
       public         postgres    false    250            ^
           1259    108613 4   djangocms_googlemap_googlemapmarker_icon_id_3b103213    INDEX     �   CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON djangocms_googlemap_googlemapmarker USING btree (icon_id);
 H   DROP INDEX public.djangocms_googlemap_googlemapmarker_icon_id_3b103213;
       public         postgres    false    252            c
           1259    108637 )   djangocms_link_link_page_link_id_adba1bc7    INDEX     n   CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON djangocms_link_link USING btree (internal_link_id);
 =   DROP INDEX public.djangocms_link_link_page_link_id_adba1bc7;
       public         postgres    false    254            f
           1259    108714 /   djangocms_picture_picture_page_link_id_d5c782e0    INDEX     v   CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON djangocms_picture_picture USING btree (link_page_id);
 C   DROP INDEX public.djangocms_picture_picture_page_link_id_d5c782e0;
       public         postgres    false    255            g
           1259    108720 -   djangocms_picture_picture_picture_id_f7d6711b    INDEX     r   CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON djangocms_picture_picture USING btree (picture_id);
 A   DROP INDEX public.djangocms_picture_picture_picture_id_f7d6711b;
       public         postgres    false    255            j
           1259    108848 7   djangocms_picture_picture_thumbnail_options_id_59cf80d1    INDEX     �   CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON djangocms_picture_picture USING btree (thumbnail_options_id);
 K   DROP INDEX public.djangocms_picture_picture_thumbnail_options_id_59cf80d1;
       public         postgres    false    255            k
           1259    108874 ,   djangocms_snippet_snippet_name_260f397b_like    INDEX        CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON djangocms_snippet_snippet USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_name_260f397b_like;
       public         postgres    false    257            p
           1259    108908 ,   djangocms_snippet_snippet_slug_bd43cd96_like    INDEX        CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_slug_bd43cd96_like;
       public         postgres    false    257            u
           1259    108885 0   djangocms_snippet_snippetptr_snippet_id_56b99614    INDEX     x   CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON djangocms_snippet_snippetptr USING btree (snippet_id);
 D   DROP INDEX public.djangocms_snippet_snippetptr_snippet_id_56b99614;
       public         postgres    false    258            z
           1259    108980 .   djangocms_video_videoplayer_poster_id_07790e24    INDEX     t   CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON djangocms_video_videoplayer USING btree (poster_id);
 B   DROP INDEX public.djangocms_video_videoplayer_poster_id_07790e24;
       public         postgres    false    260            }
           1259    109030 3   djangocms_video_videosource_source_file_id_16f11167    INDEX     ~   CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON djangocms_video_videosource USING btree (source_file_id);
 G   DROP INDEX public.djangocms_video_videosource_source_file_id_16f11167;
       public         postgres    false    261            �
           1259    109041 *   djangocms_video_videotrack_src_id_e5a015d8    INDEX     l   CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON djangocms_video_videotrack USING btree (src_id);
 >   DROP INDEX public.djangocms_video_videotrack_src_id_e5a015d8;
       public         postgres    false    262            �
           1259    109065 $   easy_thumbnails_source_name_5fe0edc6    INDEX     `   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    264            �
           1259    109066 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     y   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    264            �
           1259    109063 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     p   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    264            �
           1259    109064 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    264            �
           1259    109074 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     f   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    266            �
           1259    109075 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX        CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    266            �
           1259    109076 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     p   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    266            �
           1259    109072 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     v   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    266            �
           1259    109073 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    266            9
           1259    108363     filer_clipboard_user_id_b52ff0bc    INDEX     X   CREATE INDEX filer_clipboard_user_id_b52ff0bc ON filer_clipboard USING btree (user_id);
 4   DROP INDEX public.filer_clipboard_user_id_b52ff0bc;
       public         postgres    false    237            :
           1259    108304 )   filer_clipboarditem_clipboard_id_7a76518b    INDEX     j   CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON filer_clipboarditem USING btree (clipboard_id);
 =   DROP INDEX public.filer_clipboarditem_clipboard_id_7a76518b;
       public         postgres    false    239            ;
           1259    108357 $   filer_clipboarditem_file_id_06196f80    INDEX     `   CREATE INDEX filer_clipboarditem_file_id_06196f80 ON filer_clipboarditem USING btree (file_id);
 8   DROP INDEX public.filer_clipboarditem_file_id_06196f80;
       public         postgres    false    239            >
           1259    108339    filer_file_folder_id_af803bbb    INDEX     R   CREATE INDEX filer_file_folder_id_af803bbb ON filer_file USING btree (folder_id);
 1   DROP INDEX public.filer_file_folder_id_af803bbb;
       public         postgres    false    241            ?
           1259    108345    filer_file_owner_id_b9e32671    INDEX     P   CREATE INDEX filer_file_owner_id_b9e32671 ON filer_file USING btree (owner_id);
 0   DROP INDEX public.filer_file_owner_id_b9e32671;
       public         postgres    false    241            B
           1259    108351 (   filer_file_polymorphic_ctype_id_f44903c1    INDEX     h   CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON filer_file USING btree (polymorphic_ctype_id);
 <   DROP INDEX public.filer_file_polymorphic_ctype_id_f44903c1;
       public         postgres    false    241            C
           1259    108318    filer_folder_level_b631d28a    INDEX     N   CREATE INDEX filer_folder_level_b631d28a ON filer_folder USING btree (level);
 /   DROP INDEX public.filer_folder_level_b631d28a;
       public         postgres    false    243            D
           1259    108315    filer_folder_lft_2c2b69f1    INDEX     J   CREATE INDEX filer_folder_lft_2c2b69f1 ON filer_folder USING btree (lft);
 -   DROP INDEX public.filer_folder_lft_2c2b69f1;
       public         postgres    false    243            E
           1259    108319    filer_folder_owner_id_be530fb4    INDEX     T   CREATE INDEX filer_folder_owner_id_be530fb4 ON filer_folder USING btree (owner_id);
 2   DROP INDEX public.filer_folder_owner_id_be530fb4;
       public         postgres    false    243            F
           1259    108320    filer_folder_parent_id_308aecda    INDEX     V   CREATE INDEX filer_folder_parent_id_308aecda ON filer_folder USING btree (parent_id);
 3   DROP INDEX public.filer_folder_parent_id_308aecda;
       public         postgres    false    243            K
           1259    108316    filer_folder_rght_34946267    INDEX     L   CREATE INDEX filer_folder_rght_34946267 ON filer_folder USING btree (rght);
 .   DROP INDEX public.filer_folder_rght_34946267;
       public         postgres    false    243            L
           1259    108317    filer_folder_tree_id_b016223c    INDEX     R   CREATE INDEX filer_folder_tree_id_b016223c ON filer_folder USING btree (tree_id);
 1   DROP INDEX public.filer_folder_tree_id_b016223c;
       public         postgres    false    243            M
           1259    108336 )   filer_folderpermission_folder_id_5d02f1da    INDEX     j   CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON filer_folderpermission USING btree (folder_id);
 =   DROP INDEX public.filer_folderpermission_folder_id_5d02f1da;
       public         postgres    false    245            N
           1259    108337 (   filer_folderpermission_group_id_8901bafa    INDEX     h   CREATE INDEX filer_folderpermission_group_id_8901bafa ON filer_folderpermission USING btree (group_id);
 <   DROP INDEX public.filer_folderpermission_group_id_8901bafa;
       public         postgres    false    245            Q
           1259    108338 '   filer_folderpermission_user_id_7673d4b6    INDEX     f   CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON filer_folderpermission USING btree (user_id);
 ;   DROP INDEX public.filer_folderpermission_user_id_7673d4b6;
       public         postgres    false    245            �
           1259    109281 /   portfolio_app_mediaasset_project_id_id_2bd68af0    INDEX     v   CREATE INDEX portfolio_app_mediaasset_project_id_id_2bd68af0 ON portfolio_app_mediaasset USING btree (project_id_id);
 C   DROP INDEX public.portfolio_app_mediaasset_project_id_id_2bd68af0;
       public         postgres    false    280            �
           1259    109260 #   portfolio_app_project_slug_c7455a3e    INDEX     ^   CREATE INDEX portfolio_app_project_slug_c7455a3e ON portfolio_app_project USING btree (slug);
 7   DROP INDEX public.portfolio_app_project_slug_c7455a3e;
       public         postgres    false    281            �
           1259    109261 (   portfolio_app_project_slug_c7455a3e_like    INDEX     w   CREATE INDEX portfolio_app_project_slug_c7455a3e_like ON portfolio_app_project USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.portfolio_app_project_slug_c7455a3e_like;
       public         postgres    false    281            �
           1259    109279 .   portfolio_app_project_tags_project_id_74c3a22f    INDEX     t   CREATE INDEX portfolio_app_project_tags_project_id_74c3a22f ON portfolio_app_project_tags USING btree (project_id);
 B   DROP INDEX public.portfolio_app_project_tags_project_id_74c3a22f;
       public         postgres    false    284            �
           1259    109280 *   portfolio_app_project_tags_tag_id_023e820f    INDEX     l   CREATE INDEX portfolio_app_project_tags_tag_id_023e820f ON portfolio_app_project_tags USING btree (tag_id);
 >   DROP INDEX public.portfolio_app_project_tags_tag_id_023e820f;
       public         postgres    false    284            �
           1259    109432 =   services_plugin_serviceitem_services_component_id_id_10e59a18    INDEX     �   CREATE INDEX services_plugin_serviceitem_services_component_id_id_10e59a18 ON services_plugin_serviceitem USING btree (services_component_id_id);
 Q   DROP INDEX public.services_plugin_serviceitem_services_component_id_id_10e59a18;
       public         postgres    false    296            �
           1259    109400 =   testimonial_plugin_testimonialitem_testimonial_id_id_4052ce42    INDEX     �   CREATE INDEX testimonial_plugin_testimonialitem_testimonial_id_id_4052ce42 ON testimonial_plugin_testimonialitem USING btree (testimonial_id_id);
 Q   DROP INDEX public.testimonial_plugin_testimonialitem_testimonial_id_id_4052ce42;
       public         postgres    false    293                       2606    109161 O   about_me_plugin_skill about_me_plugin_skil_about_me_id_id_ca9ce902_fk_about_me_    FK CONSTRAINT     �   ALTER TABLE ONLY about_me_plugin_skill
    ADD CONSTRAINT about_me_plugin_skil_about_me_id_id_ca9ce902_fk_about_me_ FOREIGN KEY (about_me_id_id) REFERENCES about_me_plugin_aboutme(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.about_me_plugin_skill DROP CONSTRAINT about_me_plugin_skil_about_me_id_id_ca9ce902_fk_about_me_;
       public       postgres    false    276    274    2719                       2606    109167 S   about_me_plugin_statistic about_me_plugin_stat_about_me_id_id_73d9f336_fk_about_me_    FK CONSTRAINT     �   ALTER TABLE ONLY about_me_plugin_statistic
    ADD CONSTRAINT about_me_plugin_stat_about_me_id_id_73d9f336_fk_about_me_ FOREIGN KEY (about_me_id_id) REFERENCES about_me_plugin_aboutme(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.about_me_plugin_statistic DROP CONSTRAINT about_me_plugin_stat_about_me_id_id_73d9f336_fk_about_me_;
       public       postgres    false    274    2719    278            �
           2606    108070 L   aldryn_style_style aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl;
       public       postgres    false    229    2510    206            �
           2606    107496 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    190    2465    194            �
           2606    107491 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    194    192    2470            �
           2606    107482 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    190    188    2460            �
           2606    107511 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    192    198    2470            �
           2606    107506 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    198    196    2478            �
           2606    107525 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    190    200    2465            �
           2606    107520 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2478    196    200            �
           2606    107848 T   cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place;
       public       postgres    false    219    207    2560            �
           2606    108141 P   cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl;
       public       postgres    false    206    2510    207            �
           2606    108962 P   cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id;
       public       postgres    false    2510    206    207            �
           2606    108957 B   cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id;
       public       postgres    false    206    2510    206            �
           2606    107842 I   cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id;
       public       postgres    false    219    2560    206            �
           2606    108122 ^   cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa;
       public       postgres    false    211    2520    209            �
           2606    108117 Q   cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si;
       public       postgres    false    2502    211    204            �
           2606    107651 T   cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id;
       public       postgres    false    2470    209    192            �
           2606    108087 E   cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk;
       public       postgres    false    196    209    2478            �
           2606    108207 5   cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id;
       public       postgres    false    2609    233    213            �
           2606    107832 O   cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place;
       public       postgres    false    2560    221    219            �
           2606    107827 K   cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id;
       public       postgres    false    213    221    2539            �
           2606    107682 =   cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id;
       public       postgres    false    2539    213    213            �
           2606    107711 H   cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id;
       public       postgres    false    2470    215    192            �
           2606    107716 E   cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id;
       public       postgres    false    2539    213    215            �
           2606    108097 9   cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk;
       public       postgres    false    196    215    2478            �
           2606    108107 3   cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk;
       public       postgres    false    216    196    2478            �
           2606    108102 1   cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk FOREIGN KEY (user_ptr_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk;
       public       postgres    false    196    216    2478            �
           2606    108112 =   cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk;
       public       postgres    false    196    2478    217            �
           2606    107814 J   cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id;
       public       postgres    false    217    2470    192            �
           2606    108146 T   cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl;
       public       postgres    false    222    2510    206            �
           2606    107858 V   cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place;
       public       postgres    false    222    2560    219            �
           2606    107864 S   cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id;
       public       postgres    false    2560    219    224            �
           2606    107869 T   cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id;
       public       postgres    false    219    224    2560            �
           2606    107874 N   cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id;
       public       postgres    false    204    2502    224            �
           2606    107882 3   cms_title cms_title_page_id_5fade2a3_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id;
       public       postgres    false    2539    213    226            �
           2606    107887 @   cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES cms_title(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id;
       public       postgres    false    226    2588    226            �
           2606    108193 ?   cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id;
       public       postgres    false    233    2609    233            �
           2606    108198 <   cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id;
       public       postgres    false    2502    233    204            �
           2606    107902 M   cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id;
       public       postgres    false    2560    219    228            �
           2606    108127 B   cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id;
       public       postgres    false    2478    228    196            &           2606    109351 _   contact_me_plugin_callactionsection contact_me_plugin_ca_cmsplugin_ptr_id_46c06be6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_callactionsection
    ADD CONSTRAINT contact_me_plugin_ca_cmsplugin_ptr_id_46c06be6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contact_me_plugin_callactionsection DROP CONSTRAINT contact_me_plugin_ca_cmsplugin_ptr_id_46c06be6_fk_cms_cmspl;
       public       postgres    false    206    290    2510            $           2606    109333 W   contact_me_plugin_contactme contact_me_plugin_co_cmsplugin_ptr_id_c3433944_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_contactme
    ADD CONSTRAINT contact_me_plugin_co_cmsplugin_ptr_id_c3433944_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contact_me_plugin_contactme DROP CONSTRAINT contact_me_plugin_co_cmsplugin_ptr_id_c3433944_fk_cms_cmspl;
       public       postgres    false    206    2510    286            %           2606    109338 W   contact_me_plugin_googlemap contact_me_plugin_go_cmsplugin_ptr_id_496e569a_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_googlemap
    ADD CONSTRAINT contact_me_plugin_go_cmsplugin_ptr_id_496e569a_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contact_me_plugin_googlemap DROP CONSTRAINT contact_me_plugin_go_cmsplugin_ptr_id_496e569a_fk_cms_cmspl;
       public       postgres    false    2510    206    287            �
           2606    107546 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    188    2460    202            �
           2606    108082 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    2478    202    196            �
           2606    108232 S   djangocms_column_column djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_column
    ADD CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl;
       public       postgres    false    206    2510    234            �
           2606    108237 Y   djangocms_column_multicolumns djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl;
       public       postgres    false    2510    235    206                       2606    108434 N   djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl;
       public       postgres    false    2510    249    206                       2606    108472 M   djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id;
       public       postgres    false    2625    249    241                       2606    108485 Q   djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl;
       public       postgres    false    250    2510    206                       2606    108490 U   djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id;
       public       postgres    false    2634    250    243                       2606    108602 _   djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl;
       public       postgres    false    206    2510    252                       2606    108564 Y   djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl;
       public       postgres    false    206    2510    251            	           2606    108607 ^   djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl;
       public       postgres    false    206    253    2510                       2606    108614 V   djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima;
       public       postgres    false    246    2643    252            
           2606    108643 N   djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl;
       public       postgres    false    2510    206    254                       2606    108671 P   djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id;
       public       postgres    false    254    2539    213                       2606    108843 U   djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl;
       public       postgres    false    2510    255    206                       2606    108838 O   djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima;
       public       postgres    false    255    246    2643                       2606    108849 Y   djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu;
       public       postgres    false    248    255    2645                       2606    108833 X   djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id;
       public       postgres    false    2539    255    213                       2606    108901 X   djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl;
       public       postgres    false    206    2510    258                       2606    108909 P   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_snippet_id_56b99614_fk    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk FOREIGN KEY (snippet_id) REFERENCES djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk;
       public       postgres    false    2671    258    257                       2606    108932 X   djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl;
       public       postgres    false    259    206    2510                       2606    108967 W   djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl;
       public       postgres    false    206    2510    260                       2606    109020 W   djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl;
       public       postgres    false    206    261    2510                       2606    109031 V   djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl;
       public       postgres    false    206    2510    262                       2606    108981 P   djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima;
       public       postgres    false    246    2643    260                       2606    109025 U   djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil;
       public       postgres    false    241    2625    261                       2606    109036 V   djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id;
       public       postgres    false    2625    262    241                       2606    109067 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    264    2692    266                       2606    109089 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    268    266    2702            �
           2606    108364 @   filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       postgres    false    2478    196    237            �
           2606    108299 S   filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       postgres    false    239    237    2616            �
           2606    108358 I   filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       postgres    false    241    2625    239            �
           2606    108340 ;   filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       postgres    false    2634    243    241            �
           2606    108388 7   filer_file filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       postgres    false    241    196    2478            �
           2606    108374 @   filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co;
       public       postgres    false    241    188    2460            �
           2606    108393 ;   filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       postgres    false    243    196    2478            �
           2606    108310 ?   filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       postgres    false    2634    243    243            �
           2606    108321 S   filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       postgres    false    245    2634    243                        2606    108326 P   filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       postgres    false    192    245    2470            �
           2606    108398 N   filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       postgres    false    196    2478    245                       2606    108403 =   filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       postgres    false    2625    241    246                       2606    109129 U   hero_area_plugin_heroarea hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY hero_area_plugin_heroarea
    ADD CONSTRAINT hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.hero_area_plugin_heroarea DROP CONSTRAINT hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl;
       public       postgres    false    206    2510    272            #           2606    109304 Z   hero_area_plugin_shortheroarea hero_area_plugin_sho_cmsplugin_ptr_id_0110c78e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY hero_area_plugin_shortheroarea
    ADD CONSTRAINT hero_area_plugin_sho_cmsplugin_ptr_id_0110c78e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.hero_area_plugin_shortheroarea DROP CONSTRAINT hero_area_plugin_sho_cmsplugin_ptr_id_0110c78e_fk_cms_cmspl;
       public       postgres    false    285    2510    206            '           2606    109369 [   portfolio_app_latestworksection portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_latestworksection
    ADD CONSTRAINT portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.portfolio_app_latestworksection DROP CONSTRAINT portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl;
       public       postgres    false    206    291    2510                       2606    109282 Q   portfolio_app_mediaasset portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio;
       public       postgres    false    2730    280    281                       2606    109255 Q   portfolio_app_project portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl;
       public       postgres    false    281    2510    206            "           2606    109267 P   portfolio_app_project_tags portfolio_app_projec_project_id_74c3a22f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio FOREIGN KEY (project_id) REFERENCES portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio;
       public       postgres    false    284    2730    281            !           2606    109272 L   portfolio_app_project_tags portfolio_app_projec_tag_id_023e820f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio FOREIGN KEY (tag_id) REFERENCES portfolio_app_tag(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio;
       public       postgres    false    282    284    2734                        2606    109262 Q   portfolio_app_tag portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id;
       public       postgres    false    2510    206    282            *           2606    109427 ]   services_plugin_servicescomponent services_plugin_serv_cmsplugin_ptr_id_1367458c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY services_plugin_servicescomponent
    ADD CONSTRAINT services_plugin_serv_cmsplugin_ptr_id_1367458c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.services_plugin_servicescomponent DROP CONSTRAINT services_plugin_serv_cmsplugin_ptr_id_1367458c_fk_cms_cmspl;
       public       postgres    false    2510    297    206            )           2606    109433 [   services_plugin_serviceitem services_plugin_serv_services_component_i_10e59a18_fk_services_    FK CONSTRAINT       ALTER TABLE ONLY services_plugin_serviceitem
    ADD CONSTRAINT services_plugin_serv_services_component_i_10e59a18_fk_services_ FOREIGN KEY (services_component_id_id) REFERENCES services_plugin_servicescomponent(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.services_plugin_serviceitem DROP CONSTRAINT services_plugin_serv_services_component_i_10e59a18_fk_services_;
       public       postgres    false    2762    296    297            (           2606    109406 c   testimonial_plugin_testimonialcomponent testimonial_plugin_t_cmsplugin_ptr_id_c36413ae_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY testimonial_plugin_testimonialcomponent
    ADD CONSTRAINT testimonial_plugin_t_cmsplugin_ptr_id_c36413ae_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.testimonial_plugin_testimonialcomponent DROP CONSTRAINT testimonial_plugin_t_cmsplugin_ptr_id_c36413ae_fk_cms_cmspl;
       public       postgres    false    206    2510    294            �     x�]��n�@���S�^E��n� ��^
4E��7_����e�k��˕d'�ɂ)�R�š9�3-���!�$;����T�	^�$J9v<��=��TÏ�u���,��XÁ<���K	B��R{}��r�-�����5x2��3��/x�R&h-�N�yV�D�SǬ}��Ù,8���;��(�"r���t�J��b��8c�,��͒ԯ
`�)����9�ƙ�;�M�
���[n�m�-˕e�y����qx<����"
xz�*��V0�&E�U�9��4�4�&�12�U�DёOe��*��d�נ�MT7l��J~B�:���D�dQ�uԱ)���u?�ZLR�`����-C�����EhoA�����%�����N!�<%aɰ�Q�g:?Z�V�k]ng��:�4��<�z�4ț�?�X��'��fi�3u���+���D���gY�Y���Ϭ,׫�������y�u��|�l�/�������7��n�������o��O�Z��V��z�\�_NQ8      �   `   x�3�t�K)��L�0�4�420��50�5�T04�20�25�3000��60�.ibdf`��2�JML.Q�K,�,K�4��8cN�ĲDNKʌ����� W1-�      �   �   x���=�0����+�KC.M���It\b��R[iZ�oE�P]�nx��;�u�^(�	� ��r�sQfh��^	nT��.��U��)9*,u�UȪ��3U1$b6��q�_�y���X N�m��l�)�j��U{H��>���B؉?Q�z�a7�ly���F	����7��Y�C�׷CM�1tl�cO�tU5      �      x������ � �      �      x������ � �      �      x������ � �      �   `  x�}��n�6���Sh�n
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
#dv�D�jG9��'�j;ʣ1Nî������Q�-�Wٚ(dV�D�g�����9~d��c�ԍ�e��'�Z�&��.ϥ:�i���|b���e�3��>�e��g=�X�J���,^*?�LZP��-c'-�O�_���`u�#䇀m��7��F~��m��5^4L\�pe~���g?���\~7@]�FGs�Qmt}&�D�#$��t�ę�y�D��oR�� �'�       �   �   x�5�A�0����+<x��7�۠���Bd)a��-���y�}�#�G[�xM�"�y  ����s�������~1G"�����(=�R'�$��+5Tq�5e�.� 0��2f1�(4����@H&26��&�4-�5(�1ͥ�'�P�Mo��6X(�      �      x������ � �      �      x������ � �      �      x������ � �      �   -  x��VM��F={~�ދH9��m�m>�$��i�\܅�q������Zi&�d;Y����ސC>��h7�����޶˛��n�nv���?�6L��A�Bj04|�������G�أ_.x�� �� t�O�}��=�����%Q��h���:Rtȱ�,�W����C�d���Di�g$N�j�)g|������	B��B�*������D^0±���4�F'q���˻]{�{�m��now�ns�ڌ-�j��1�Ȋ�bC�z2PK��{'j�&z�\����^u�ݿ�z՝T=�U�xR5ҙ����Ch�'&�ӄo��a���$�{cy[}�6�����1J�E��N@(���4�!�t��SO�b�8-͡G��fγ�C������g�0027 �*S ��F4�t!����p�mv��3�г��j�ыLNS��&2��U���!���>���o��ع�:QM:ժ������y��>���8`ѫ����x�<-Ae���E�C�`G-�����'y�c��ou�ޝw��R�m,LLo���)W+ȥ��Exȕae�V���3O�*���^(���pt�~w�\�"�!�l)�;:{�aX|�:�6�}T��%E��#~������Ǣ��T���x.�����V�8���Tw�7.�ay>_��~R2���)p�ٰ�(��%C�d��r�_(Q�ﾐm��-�������B���Hx#���0��P\��6{���d��/�:	�X{6F�R����r¿��Rő�(*�P�/x�D.�'�ZQ(�@un��>z���'��U      �      x������ � �      �      x������ � �      �   U  x���Mk�0�s�+r5�,Y�o;�Kc��(%YmRZ��?'MYӬa�,!zmJ�jU�Ӂ�D�D�X��k��-�i��t>KBR6G���Ǉ��˱/��z�z���w��&k�2)�D'&��q�x#��_x�3+p$6�7m8j���+Z��􈊌�疩%j�u��-�*l7'�qح�caR�'��+���$ĩ�@�XK���n����H��M�(a�؋��"yZb��q��W���-��y��>���Z��� ��5)�������m[���.dm>MD�8w�˻mس���z9r�$��(M�'Q�4�A�q߱Q����m͵��J�� S-&      �   �   x����D!ѳ+��6�e�c�	a
��8I���^7;2>��8�>��^/vh�5
i4�o�
ո�?�������Л�^=��;h��x�\x�������/N�"�(R��.��/�Xd����^ �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�}�[
� E�'�)Q��DW��*5��n��@p��\��ʚ����`�V�[�^C�Cw�D�1b8�W�����f��@k#��:W�.�T��Aui�E����l��Z�K�[S2扤:��b�[��)a� ���D6�[ڔ��i�6Jo	��0A����~���f��SQ<U���t���(�      �      x������ � �      �      x������ � �      �   �   x��Ͻ�1�z�)�Ő�$�$�m�D���e�+�����?�X�M9S�#G�=��=_�M{�a]��:خ�YJ�D3rņ�ńD�2���-$Ly��%�����a_�{c� m�Q,N
�aϜy$=0�t��f�����~��
6���?+[��]	�H�����: ��[�c����W��~T8+F���#p����_n"� ��      �   -   x�3�4000�4�4����4�2�|c��7��=... k�
I      �   4   x�3�0NN�471�M320�5IN2׵L6O�M266752OMJN1����� �F
d      �      x�3�L��4�4����� U4      	   �   x��Ak�@��ɯx��7���z[�ڀB� H�<7[ܷ���!P�����o�(�]]o��7x�������Q�7Ǘdg=�\� Aw���D`�3�p��&֤��8:ȓ���}�ᱪo|!���F��~��w�xC?S�S��B����M�g�3m��yklV��_����^��٪����\�K�ɥ�/�E��T*�??���i����         M   x�34�Զ0Q043W015Q0347�N�Tp���Q�L-�K����L��K/�Lͳ4rH�M���K���24#_o� ]�#|         ?   x�34�44�7ַPp>��H,��Qp:�&/C��؆�t�Û�`b!��q���'F��� c�'b         �   x���O�0������bi�M�N
V7�����LE��N�""����~�LQ!9\ny���8�ũ;J�r|��E)vM�¼,�6m�wIT}��1�e@�PDt{r�[�����ViO�F����Y�m�d�mia�H�˵NLd�'��ȓ�� ���e6?��=��>�( �wi�_��U���;_�eS      �   p  x��W]o�6}V~��׵y�ͷ"�u�$��F�n�eHrV��);��HA�� 	���{.yxM2�D���-�9!�j�����2#�O��e��9�I47�.��Jp��~w����W?|.lU��0��/_���bc�.<ݿ���7y�����>~z����W��Kg�>������{o��r|��ޗS�E����Xܥ�X�<�jW���V�:��Ɣ�'�4�Q�P$4��>@�Cyg7r����.<~(*ו������_�YB�p������c�������HW�Ɨ'��YژEރ�<�TL�bT �n��(�-�5�0T�
�G� �%/S��'�/g���O[�z�)ݷ%'k��QA�:D����WM�G�v=x�z��9"JH�S��ʳ�m�K˻ٵ� ��[����r��U^o�A�n�u\�N6F�4���b�_1�X�S��
=��e�ۙ�9�h�����(�@yv0�E�a��q�RE�����"�>F �-��������v�H�R��i)1dP�/�?���}��g^skWy�ۮs�t?�|���֗��]��W.�L�_����ηcx�@Dx���
N)���+fH �	[%�OL@(��K&��LMl ��A�p'�y]�i��~P]&��y�����F��:����;ۿt[9sr�v�08FG�W%e6T��K�O�\!e��M�䱦z���p�(03��d	���y;\�{�z���$`�7E��|���ͦ���5��h��0��5M��� ������%�+}�/'�#/"Q`�x�h-�3�"����������a� � f��$<��&�����-s��{�%yu� ����A#�Cҏ�����9��      �   �  x��U풣 ��<�UT��]��"8k��U����߈ƸIv�~����!�&2��ċ�=(Dc�0������dn�P/�iVä�	mJ�Ǹ�e��x����(˴(+LpbQ%�7�P��y=�BQd@h%Vȸ5��A��г�Ң���G��f�E�%^�U4��|ÀV��6s1���޶☉����S�%#����\v5M��PYQ��-DK����v���A;�B^���������R'�ث��#(k��4&��g'Be����v����-Z/��K�s�:��2��k�.�9[���)�E��'���ƪzb�!T�{�W�F�LP�;�ӣ�l�j�)3j:�<���.a�XP��ŋ�#��W67�;�+�ƀl�;2Z�=&�����I��j����l�?'�$��?�х���{�>T���.�4/Ҿ������t
B�G'*�>L��i"Gs��]0�N�R��c�&�$�3x�rlh^�D�Z�t�PW��Ui5gޅD����SI�J�H�	u��%1@�<�d�;J�n�u������'�^Ɗ�8�����^І�͹К���B�34�[��AS>�ׂ�����uK��)������C���%��^ph���tKjC�CI���K�|�����5~���=Lhz      �   	  x����r����=O����R����g�*��I�l��sf���$�q܄Tn��R��
���X���ϥvJ)(�s36U�C�oe�V�/���{e
B
����U��m[�I�	Q�w��Ԝ�%P���˶{��ʾ>u�u�����x�Ȕ�������`<8%�;�6�������̋�_�J�Em��G���z�H%j�dmp�¬5ZS���s�t�����Y�+��Mf1}�%1Z�&1�bw�B_���������7�Uȟ��L�j6E�I%�`Ekf����<��k��s�!�qv!P�y���.�C]c=��^�E���g�X��@��Q$�ёJ�.W���ϙ������> ��').@�%�����SV�9h�/��My�N�%,;8&�#����뾼�����;'@y�~�m}~�_�,����9KO,>���OU�nb�s蠾a��I�.� 2�~A'Asc�%���1&���vm��r���7
����6�����e4�
��	B7����^�ͱ�~��������z�坱���s7���ag��qɏqN�����JD%�F;|Ϲty�[6�K_�7�kde�&P*Ssf�{V%e��!()�:.6��?���v)NIFə1muϙh!��̨� ����f��95�+/|N��EI:��>zΈ����e	9�r��e�[�_;�����f=�����T4�r\l7��vJ��E�ݹ�v�{iں�zz(,��~���ѡ��rF��.��p��r|��~�9mp��.bư.��Qw�ҩt,z��A�������|�V���(yF(�� LF7x��G9�I,wdC�J�gA�&����.�A��> �2���0V�蹨�u������*�ե��,z{���6�P���j:��	���A,�v��3���L˧�DU�ঞ���g
��cu�;|i��(�vfL^l���B�t�qe	\�0>�g}�~Gs��l�!�tZ|�p��]� ^�Ko�=.�(AL���VQN}6�ҵ_���>�LpZa��F��0�ؓ�0o�O�ki��,���B�Y^g�[��m�.)���k [�:��".���s<	�ǆ5͹��uy��M�'��q̉��܈�����0+hҒ�P��>�0�!W
�5Z�<U�/�Tx �/�-���ms���X����$6�>N`܍��.[�
��߸�-��C���!�c;%�B%g�W��&'p�&�Ձ[YZ�rM"/p�5�њ��ㆂ�vߪI�5�u�z[��O��8����(:<C�E�� 	�,�.��i���� �9���D��`�3B�'88�̋����ݤ�\S����+t���L^���<z�Bʷn�I7�̄�{_�|M����U�K�蜬_v[�Ӈ �|� )���(���Cs��w�cd�TF��8^�Y�/C��!�K��I>��qd�-h?G�B�Җ��QF�t�<?��O<���,��t���\.��u�SY�� od=�ʁS��ɋ�2dJ��j��a��,m����$��4��"�����RL0.(��Ѽ�q�{���Ot	�e�rB��v'�K����c�rd�[nz�O����n9���]Â�),�>��<�����mM�p����]�lA�z��<�g���=)��S������p箥�k�r}vҰ����Xw�6<�������O�MR$�uN�9a6��"S������IS�����Y�'(���%��J	 .�~��B�0�]9Ntr��eN�8q�Y�������0(�JL �@���e��QzWWß����(�7v>��+#�����p9V-M�ۂ��v�?�~���/�<0rߺ�!�u�¼mw=7���S��Z ����~�V������. ���[b_@
�>쪟�u,9`��fo�Ca��vz�$����Ǥ�g��a��J�Ԭ��X"�g��H�qK*xR	%�y&�G���tA�aڝ�H\|�jl��9�/��j���Tl�le0�K׏/]��Q]>�%�=��C�n��`��桁��naP��[٣/��7�����g�����E0s@E�r��y6p��qxc|�*~�@����I�28�ħ�d�a��" �aoUa��<�q=�X������X��#���(Ă��-;L/�P�U6��.V�_�}w=?��p��,Nh����	�#���)�р�|���w������r�j��E7��E����ԝ�̟��'J�Z&{�`V�n��c���z��x��m-ZN��{s����p��՞{��e:���V�p/�Q��*����Ǐ�h�0.      �   �  x�u�ˎ�0 E��Wt_Md!�,�y�h�(�lu�#�;��4��~�T��+�s��n�>w}ܸ �3�U�\�w�_p՚�;Lx�;�-3�eq)��z��E�㨡1�Ċ��^[����a��':�e]S�hE��d�v��Du*EXn�L�.t�x�n"���Jl[����n�#�DC��?<=�l����E:_������z_���&�:)��@���]�����]U�	����
P+��U�D����@k�����=r�+>:���<	���b��2=��y��"��rI<a6��İ�]a�(K��[Ó~��N��� ��.Z8h!�x��S%���':\5eu}���~gP�V_�	�k�c�w�HSs�53�@̄�Z�<a�A�-k�?�ˤG�_�8� a�?y~ͦ��'�2�R      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�3�O�I��MU����L�S�K/�R�E%i�9����E��E��������!F�n�>�E���>��zY�%%�V�����z���%�I�z@3��K�3��l#��C|3��2<�L��mc� �'P         �   x�34�t��+IL.�w}�03�U��'�12X�?��O!�_!���D����(����rf���'�&�g��'��'C���*H�24���f���Ee�ɩŜ��
���
���9)
���ũ
���&�e�BL0�Ԅ=... ��d�      �   K   x�36�L��4�L�-�7�3�3��M�+���OI-�O͋7����"��Ҥ��d.cs��
-�48�(1��+F��� -*      
   �   x�͎A
�0E��箴�
A�n�퀙�̤��B�������|���".IK+�czW�c��ǰ>a!ecy�K��DJ�3K(j��O-^q'���*Ƕo��9��QnbyPoO�8��O{�68�]�p\      �   ~   x���=
�0@�z���J��"hi#�o�5!f���b3M
����0���pd��O �Yf{���d���Đ�#����_P��v2�E�S�i�V��2�Y�?!#|#ު����;Ů���;ͮO�i[*          �  x��W�nG}���ߴ�IE�%A�@��olÎ����9����=�i������=�=7i���M�m^��.�N�*^.��F��������o�S����V�V['<![
QY�UT�NȚ:���P�B)>)h5���W�$�B�Vk�BE�k�"��*D�Cwm���}�����Z���/Q	-�
��_���ё/��ӲRo����b�A	��R�:�G�UT�XS�TPm��	փ�+]࿆��%hkBU-bQG��m
\l� M/y�x�TÓ�N%�]t��Am�0�p)g��1tZ�R�����rS6�m[[#����&�DB"=�%2���Yh��b��7����6}М�дC���$lr����	�Ut��Wu1Uxԑ8]�#�A�! cE���@��(���4��ʊp���u��^�����%�`�dt(��Rm7��L��ʪx��Y?��t.g��3t���@Z���S|~W�k*�,�p o�I̕��̋3��?��;����;��%�x��zٽ�l>��'�K�j(������.c�.Q"�ȄA�rG!0-Sm���e
fP��W�ɾ�3�Ϟ��w���`�@���L��V�7]�{����\�;.��?JUABo�I#7�D���mH�r�#?@�$�{��7-���f괉�t�d(�?�N��<��z�\f@���R�[��J��aD�cMH���oGʈ@��:"�ӡ ��Q��[�3�T�+4wZ&��"Վd�F��3T�Gx���� ?)��R���$��I9��#����\��K��M �ذ���a�m�H/t�(BvN�0��T��s@?��\bR�U���LS�NR�;�s�4��!Z�f���E$��O!���Y���!�x؍U˦�*tN��@��t��<S�",�C򬤓��\�Ԋ�ƀ0�C����j�$�s!(7�%�Ysv�<|�,x<`$�8oጧ֠�:��K�sL�l$j��f�=A������&|���p%89�OFE%�T6�V#P@.T�@-n�22^IФ�֠���$��X d��`W{qI���7�/��xy{�����N!E��������<5��_�/�&[��.��-���M�r�|��t�.���l��8]���Wb��Z��ο*W���^����y��B����^ܦ���������9���9{�3~Dd���5wٷ�K<�µΚݫ���e�������G�m���o+B7�r7J �X�g25Z�˹S����GN`kR-]=� ��LF�^�Z���	g"�c&�������:��L��WN���j���� ?^Ai��Aܐ"�������$��GQ�";Ծ��뗷)2�d�5�u� jTͱ��V�Y�<�-!�#R�iv�08>�qg�ob������
M���B��H�O�Kh:{&a��!�0$��_ �(�TA2[+� ��7�m���݆�&`u�Q'�F�:��*͌�AŜ'p?�3����=�Ɗ�qSxD�׉���$l�L!��]�XMZ眒5�Hk����1Nm�=(XP�AR�-�u8�E�������<ڈ��#��G�8��L
��;��;	���I� ��(9@� �ò�(A�l�䶏��]��򧓂y�'�x3�cfߙ#�{�9�^�:Y=p�S�j��W5Ac8�C�����a`*�I������2W$��u#���'z��'���m9$v	YR���0ӗ�-[i*��'ۦ��'M#�T
Ӊ[-Y�b���O1h�� �j@5�xC�a�2�*����-�Ũ���k^�~P̨w�U ����ǀ�7w�hA�7������ɠ.�1���)^�~TU��F�o�	2��:65�T�M��ԓ\|5lVM��r�-.�X#!Cȸ�%٫�I<N��i7��8^d��o��_�y����Z}��mܫ�O[]^�]`+/�_��ϟ�igW닫�y��������>�/^��	:�         !   x�3��4�2��\Ɯ�@�	�4����� 7�         4   x�3�OM�2�t�K)��L�2����2�t.�/.V�I,I�/������ �         �  x�Օ�nAE��W�.�Ġ�G�d7����K;��M�S%�tO��cɋ�F~/_�j�-��,æ�Vwչ��0����r��X�0,���l>)���"���Ԡ4�48��> ��f�����ӑ-:��C�l��iҞFSG����T�rՅ�
0��[��5nq�z�]�M�e�acM��rNY�+۴1��N��~V\��%fӛ��Ё5>j��,�Mj��,�@������5����u���|W�X-B-?}"�Q.6�ѬD��~c��b8�u�[?�_��yx�y��9:g|��.9�c�؉{��$og�����@J�+�\XG���4��!mg�����	]�����pa�l�70�>�{6�8��hhս�qg�ut�qM��H2��� �#FHr�ج�N�g���.�r:��Qo٠�-$0�-��i]��������6�,Q����* M�&�����``��
{~9҅5�D(��N1x��5$.1��ك�9,]�^���CB��~��9���t��-��\�'�:�	k���z��wns+�^-�$��W�'~m5���^��������,���2�jq�Ne��B*w���UJ��&�1���2w��ie.r%=���P�O�92�	�"�b��1��)�2�l����h���õ��}���{� O�	L��JI�g��ߜ���%(�_{�N�7)��-            x�36�2������ 
��         3   x�36�,I-.�����L����M�OJ�O��+IL.��*H�2� �"F��� Ɔ-         �   x�͐�jC1E��P��H�XȒҡC�,�-�Dd˵������Iq9:h7��Rऴ�����K����D�@<�1��I�E0Gm� T5�F�-�O����T�X��~c�(��!a�����=M�mx�޵Q�s5Ͽ��<�Dw�L}�R�b��C$qe�\n?�W����ǰ�>ғ��e!|p �*     