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
		<aside id="right_column" class="sidebar">
			{$HOOK_RIGHT_COLUMN}
		</aside>

		{* Footer *}
		<footer>
			<div class="modules">
				{$HOOK_FOOTER}
			</div>
		</footer>

	{* End of #page *}
	</div>
{/if}
</body>
</html>