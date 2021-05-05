<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'phpmyadmin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '[c|BZk5T4ZCoLtp)G^O]:BPO(Q9$~pw.amY}iANLw.qF%n*uyVC*5&AG($ WIJlv' );
define( 'SECURE_AUTH_KEY',  ':3Bw(KM)^Z/XrB:k@`spYd:G~]^6upb^Zv@F)wtwSNCNGVnf8wRGC$+:p7BS1<Ib' );
define( 'LOGGED_IN_KEY',    '>H$8V]Iz+T^qSUc=Q2#`*KQBfgFV@KF<ey!1y&G~(J*(,v,Q_<|$|?}s#_k&U!B~' );
define( 'NONCE_KEY',        ')KCs8B68F(8?ppfS^SkbWP?J(VaYsROysNv/3QzP*M:9ap92j:lR]Tld SzhcNk~' );
define( 'AUTH_SALT',        '<}Fnur,#zi_lLC|:!~<x~9f`>+5a6!A{&G7 iwntinp!%I3 _P`h+C;ON{yxzNp$' );
define( 'SECURE_AUTH_SALT', 'bgdD;<DH! yy7]$r<]1.-TdW8|zz{v^$6>zs!m&YV09,cP$a9nuhm0NyHzB,cFg^' );
define( 'LOGGED_IN_SALT',   ',`=uXw:p*~8#DqS%i-a9K2W~GVSLxK.KGs&hA OF9YaGIxWr7ZpvS,2w G7YZN??' );
define( 'NONCE_SALT',       '{0<9W_D9Xu/`5/V[DSl$KdYqPnE=Q24e?MzPj7-IReR`}NL{_>Ah$WJpRd;LmC5;' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
