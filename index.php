<?php
/**
 * @package    Joomla.Site
 *
 * @copyright  Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

if (version_compare(PHP_VERSION, '5.3.10', '<'))
{
	die('Your host needs to use PHP 5.3.10 or higher to run this version of Joomla!');
}

/**
 * Constant that is checked in included files to prevent direct access.
 * define() is used in the installation folder rather than "const" to not error for PHP 5.2 and lower
 */
define('_JEXEC', 1);
echo "==>1<br>";

if (file_exists(__DIR__ . '/defines.php'))
{
	include_once __DIR__ . '/defines.php';
}

if (!defined('_JDEFINES'))
{
	define('JPATH_BASE', __DIR__);
	require_once JPATH_BASE . '/includes/defines.php';
}
echo "==>2<br>";

require_once JPATH_BASE . '/includes/framework.php';
echo "==>3<br>";

// Mark afterLoad in the profiler.
JDEBUG ? $_PROFILER->mark('afterLoad') : null;
echo "==>4<br>";

// Instantiate the application.
//$app = JFactory::getApplication('site');
echo "==>5<br>";

// Execute the application.
//$app->execute();

// joorgportal-start
echo "Joorgportal-Start...<br>";
echo "<head>";
echo "<meta http-equiv='refresh' content='0; URL=start.php'>";
echo "</head>";
echo "<body>";
echo "wird direkt weitergeleitet. Sonst:<br>";
echo "zum Portal: <a href='start.php'>Portal</>"; 
echo "</body>";

?>