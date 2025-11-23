# WordPress Hooks Data Issues

This document lists known data quality issues in the hooks JSON files.

## Duplicate Actions

- `manage_{$this->screen->id}_custom_column`

## Duplicate Filters

_No duplicate filters._

## Missing @since Tags

_No hooks with missing @since tags._

## Empty Descriptions

_No hooks with empty descriptions._

## Empty Variables

Hooks with `@param` tags that have an empty variable name.

_No hooks with empty variables._

## Param Count Mismatches

Hooks where the number of `@param` tags does not match the `args` count.

- `check_passwords` — args: 1, params: 3 (wp-admin/includes/user.php)
- `comment_feed_groupby` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `comment_feed_join` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `comment_feed_limits` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `comment_feed_orderby` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `comment_feed_where` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `comments_clauses` — args: 1, params: 2 (wp-includes/class-wp-comment-query.php)
- `comments_pre_query` — args: 1, params: 2 (wp-includes/class-wp-comment-query.php)
- `found_posts_query` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `found_posts` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `get_meta_sql` — args: 1, params: 6 (wp-includes/class-wp-meta-query.php)
- `http_api_curl` — args: 1, params: 3 (wp-includes/class-wp-http-curl.php)
- `in_widget_form` — args: 1, params: 3 (wp-includes/class-wp-widget.php)
- `networks_clauses` — args: 1, params: 2 (wp-includes/class-wp-network-query.php)
- `networks_pre_query` — args: 1, params: 2 (wp-includes/class-wp-network-query.php)
- `post_limits_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `post_limits` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_clauses_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_clauses` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_distinct_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_distinct` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_fields_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_fields` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_groupby_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_groupby` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_join_paged` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_join_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_join` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_orderby_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_orderby` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_pre_query` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_results` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_search` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_where_paged` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_where_request` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `posts_where` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `pre_ping` — args: 1, params: 3 (wp-includes/comment.php)
- `sites_clauses` — args: 1, params: 2 (wp-includes/class-wp-site-query.php)
- `sites_pre_query` — args: 1, params: 2 (wp-includes/class-wp-site-query.php)
- `terms_pre_query` — args: 1, params: 2 (wp-includes/class-wp-term-query.php)
- `the_comments` — args: 1, params: 2 (wp-includes/class-wp-comment-query.php)
- `the_networks` — args: 1, params: 2 (wp-includes/class-wp-network-query.php)
- `the_post` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `the_posts` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `the_preview` — args: 1, params: 2 (wp-includes/class-wp-query.php)
- `the_sites` — args: 1, params: 2 (wp-includes/class-wp-site-query.php)
- `user_profile_update_errors` — args: 1, params: 3 (wp-admin/includes/user.php)
- `users_pre_query` — args: 1, params: 2 (wp-includes/class-wp-user-query.php)
- `wp_authenticate` — args: 1, params: 2 (wp-includes/user.php)
- `wp_default_autoload_value` — args: 4, params: 3 (wp-includes/option.php)
- `wp_feed_options` — args: 1, params: 2 (wp-includes/feed.php)
- `wp_next_scheduled` — args: 4, params: 3 (wp-includes/cron.php)
