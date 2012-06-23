{*
 * =|= Footer ===================================================
 *
 * Right sidebar and bottom <body> content of theme.
 * Included on every page.
 * ==============================================================
 *}

		{if !$content_only}
				</div>

<!-- Right -->
				<div id="right_column" class="column grid_2 omega">
					{$HOOK_RIGHT_COLUMN}
				</div>
			</div>

<!-- Footer -->
			<div id="footer" class="grid_9 alpha omega clearfix">{$HOOK_FOOTER}</div>
		</div>
	{/if}
	</body>
</html>
