{*
 * =|= 404 Page not found =======================================
 *
 * Displayed when a page or product cannot be found.
 * ==============================================================
 *}

<h1>{l s='Page not available'}</h1>
<p>{l s='We\'re sorry, but the Web address you entered is no longer available'}.</p>

<h2>{l s='To find a product, please type its name in the field below'}:</h2>

{* Search box *}
<form action="{$link->getPageLink('search.php')}" method="post" class="std">
	<label for="search">{l s='Search our product catalog:'}</label>
	<input id="search_query" name="search_query" type="text" />
	<input type="submit" name="Submit" value="OK" class="button_small" />
</form>

{* Back button *}
<p><a href="{$base_dir}" title="{l s='Home'}" class="btn">&laquo; {l s='Go to homepage'}</a><p>