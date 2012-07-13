{*
 * =|= Footer ===================================================
 *
 * Right sidebar and bottom <body> content of theme.
 * Included on every page.
 * ==============================================================
 *}

{if !$content_only}
		{* End of center content *}
		</div>

		{* Right sidebar *}
		<aside id="right_column">
			{$HOOK_RIGHT_COLUMN}
		</aside>

		{* Footer *}
		<footer>
			{$HOOK_FOOTER}
		</footer>

	{* End of #page *}
	</div>
{/if}
</body>
</html>