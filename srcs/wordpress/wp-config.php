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
define( 'DB_NAME', 'wp' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'DB_PASS' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

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
define( 'AUTH_KEY',         'E^/V>5mBNacRfW[^.yt+j]!8%vD6~5BH7m7Z#7#/PgR{S6o{8HK)w[s<G;Y[TG(`' );
define( 'SECURE_AUTH_KEY',  'D3?/T!$roJgYNSeg]xV:li@_#M2jK68r,K_i)$1{$0@T~a<KLDiQ+03|Y >/FPGd' );
define( 'LOGGED_IN_KEY',    'WTMKK!mCQ#Clj!KiT07H$zm}I5Byr)2|?ailXB}fFFI2|oV@o$>0:!-ttF*e3Nye' );
define( 'NONCE_KEY',        '/hd?N?dLk_T?V.8v:,IcQM j:vP5zBT9@1/m|f&{*tKPm+~ ?vkGA0Nqvu]#+h#S' );
define( 'AUTH_SALT',        '<]:{C??Z,NxW%9EuHoS.EO@D{D~r@06#fN^`0D1|oHMy1K#u(< 2O/a0mo?fE <d' );
define( 'SECURE_AUTH_SALT', 'IjNvf&iCqca}Ux O+pphhMgQ$^>)<vY[W91{cnkrXBNCyq6hWCy%8@``JS zks-h' );
define( 'LOGGED_IN_SALT',   '2:#Wq3j+SFo*2).&cOUD5Y!:xA0y,1L?6ni=8t_z4qIh ORvgNlUVx6eTXLMP}?-' );
define( 'NONCE_SALT',       ';jZhC=aCVDz3~q:&&3Y+NsB<}*qJc-mbb_%VML~w}).9uQu]y`TGw:ugGzg:`Z s' );

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
