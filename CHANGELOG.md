# WordPress Hooks Changelog

This document lists new actions, new filters, and parameter changes by WordPress version.

## WordPress 6.8

### New Actions

- [`import_filters`](https://developer.wordpress.org/reference/hooks/import_filters/) - Fires at the end of the Import screen.
- [`set_site_transient`](https://developer.wordpress.org/reference/hooks/set_site_transient/) - Fires after the value for a site transient has been set.
- [`set_transient`](https://developer.wordpress.org/reference/hooks/set_transient/) - Fires after the value for a transient has been set.
- [`wp_load_speculation_rules`](https://developer.wordpress.org/reference/hooks/wp_load_speculation_rules/) - Fires when speculation rules data is loaded, allowing to amend the rules.

### New Filters

- [`get_calendar_args`](https://developer.wordpress.org/reference/hooks/get_calendar_args/) - Filter the `get_calendar` function arguments before they are used.
- [`image_max_bit_depth`](https://developer.wordpress.org/reference/hooks/image_max_bit_depth/) - Filters the maximum bit depth of resized images.
- [`is_post_embeddable`](https://developer.wordpress.org/reference/hooks/is_post_embeddable/) - Filter whether a post is embeddable.
- [`manage_users-network_custom_column`](https://developer.wordpress.org/reference/hooks/manage_users-network_custom_column/) - Filters the display output of custom columns in the Network Users list table.
- [`password_needs_rehash`](https://developer.wordpress.org/reference/hooks/password_needs_rehash/) - Filters whether the password hash needs to be rehashed.
- [`pre_count_many_users_posts`](https://developer.wordpress.org/reference/hooks/pre_count_many_users_posts/) - Filters whether to short-circuit performing the post counts.
- [`render_block_core_navigation_link_allowed_post_status`](https://developer.wordpress.org/reference/hooks/render_block_core_navigation_link_allowed_post_status/) - Filter allowed post_status for navigation link block to render.
- [`rest_menu_read_access`](https://developer.wordpress.org/reference/hooks/rest_menu_read_access/) - Filters whether the current user has read access to menu items via the REST API.
- [`should_load_block_assets_on_demand`](https://developer.wordpress.org/reference/hooks/should_load_block_assets_on_demand/) - Filters whether block styles should be loaded on demand.
- [`the_password_form_incorrect_password`](https://developer.wordpress.org/reference/hooks/the_password_form_incorrect_password/) - Filters the invalid password message shown on password-protected posts.
- [`theme_block_pattern_files`](https://developer.wordpress.org/reference/hooks/theme_block_pattern_files/) - Filters list of block pattern files for a theme.
- [`wp_hash_password_algorithm`](https://developer.wordpress.org/reference/hooks/wp_hash_password_algorithm/) - Filters the hashing algorithm to use in the password_hash() and password_needs_rehash() functions.
- [`wp_hash_password_options`](https://developer.wordpress.org/reference/hooks/wp_hash_password_options/) - Filters the options passed to the password_hash() and password_needs_rehash() functions.
- [`wp_next_scheduled`](https://developer.wordpress.org/reference/hooks/wp_next_scheduled/) - Filters the timestamp of the next scheduled event for the given hook.
- [`wp_prevent_unsupported_mime_type_uploads`](https://developer.wordpress.org/reference/hooks/wp_prevent_unsupported_mime_type_uploads/) - Filter whether the server should prevent uploads for image types it doesn't support. Default true.
- [`wp_speculation_rules_configuration`](https://developer.wordpress.org/reference/hooks/wp_speculation_rules_configuration/) - Filters the way that speculation rules are configured.
- [`wp_speculation_rules_href_exclude_paths`](https://developer.wordpress.org/reference/hooks/wp_speculation_rules_href_exclude_paths/) - Filters the paths for which speculative loading should be disabled.

### Changes

- [`check_password`](https://developer.wordpress.org/reference/hooks/check_password/) - Passwords are now hashed with bcrypt by default. Old passwords may still be hashed with phpass or md5.
- [`date_formats`](https://developer.wordpress.org/reference/hooks/date_formats/) - Added the <code>d.m.Y</code> format.
- [`get_calendar`](https://developer.wordpress.org/reference/hooks/get_calendar/) - Added the <code>$args</code> parameter.
- [`the_password_form`](https://developer.wordpress.org/reference/hooks/the_password_form/) - Added the <code>$invalid_password</code> parameter.
- [`wp_create_application_password`](https://developer.wordpress.org/reference/hooks/wp_create_application_password/) - The hashed password value now uses wp_fast_hash() instead of phpass.
- [`wp_editor_set_quality`](https://developer.wordpress.org/reference/hooks/wp_editor_set_quality/) - Added the size parameter.
- [`wp_pre_insert_user_data`](https://developer.wordpress.org/reference/hooks/wp_pre_insert_user_data/) - The user's password is now hashed using bcrypt by default instead of phpass.
- [`wp_update_application_password`](https://developer.wordpress.org/reference/hooks/wp_update_application_password/) - The password is now hashed using wp_fast_hash() instead of phpass. Existing passwords may still be hashed using phpass.

## WordPress 6.7

### New Actions

_No new actions in this version._

### New Filters

- [`block_bindings_source_value`](https://developer.wordpress.org/reference/hooks/block_bindings_source_value/) - Filters the output of a block bindings source.
- [`feed_links_args`](https://developer.wordpress.org/reference/hooks/feed_links_args/) - Filters the feed links arguments.
- [`feed_links_extra_args`](https://developer.wordpress.org/reference/hooks/feed_links_extra_args/) - Filters the extra feed links arguments.
- [`pre_attachment_url_to_postid`](https://developer.wordpress.org/reference/hooks/pre_attachment_url_to_postid/) - Filters the attachment ID to allow short-circuit the function.
- [`script_module_data_{$module_id}`](https://developer.wordpress.org/reference/hooks/script_module_data_module_id/) - Filters data associated with a given Script Module.
- [`wp_allowed_block_metadata_collection_roots`](https://developer.wordpress.org/reference/hooks/wp_allowed_block_metadata_collection_roots/) (6.7.2) - Filters the root directory paths for block metadata collections.
- [`wp_img_tag_add_auto_sizes`](https://developer.wordpress.org/reference/hooks/wp_img_tag_add_auto_sizes/) (6.7.1) - Filters whether auto-sizes for lazy loaded images is enabled.

### Changes

- [`get_edit_comment_link`](https://developer.wordpress.org/reference/hooks/get_edit_comment_link/) - The $comment_id and $context parameters are now being passed to the filter.
- [`image_editor_output_format`](https://developer.wordpress.org/reference/hooks/image_editor_output_format/) - The default was changed from an empty array to an array containing the HEIC/HEIF images mime types.
- [`wp_set_password`](https://developer.wordpress.org/reference/hooks/wp_set_password/) - The <code>$old_user_data</code> parameter was added.

## WordPress 6.6

### New Actions

- [`delete_post_{$post->post_type}`](https://developer.wordpress.org/reference/hooks/delete_post_post-post_type/) - Fires immediately before a post is deleted from the database.
- [`deleted_post_{$post->post_type}`](https://developer.wordpress.org/reference/hooks/deleted_post_post-post_type/) - Fires immediately after a post is deleted from the database.

### New Filters

- [`activate_tinymce_for_media_description`](https://developer.wordpress.org/reference/hooks/activate_tinymce_for_media_description/) - Filters the TinyMCE argument for the media description field on the attachment details screen.
- [`interactivity_process_directives`](https://developer.wordpress.org/reference/hooks/interactivity_process_directives/) - Filters whether Interactivity API should process directives.
- [`lang_dir_for_domain`](https://developer.wordpress.org/reference/hooks/lang_dir_for_domain/) - Filters the determined languages directory path for a specific domain and locale.
- [`site_status_autoloaded_options_action_to_perform`](https://developer.wordpress.org/reference/hooks/site_status_autoloaded_options_action_to_perform/) - Filters actionable information to tackle the problem. It can be a link to an external guide.
- [`site_status_autoloaded_options_limit_description`](https://developer.wordpress.org/reference/hooks/site_status_autoloaded_options_limit_description/) - Filters description to be shown on Site Health warning when threshold is met.
- [`site_status_autoloaded_options_size_limit`](https://developer.wordpress.org/reference/hooks/site_status_autoloaded_options_size_limit/) - Filters max bytes threshold to trigger warning in Site Health.
- [`wp_autoload_values_to_autoload`](https://developer.wordpress.org/reference/hooks/wp_autoload_values_to_autoload/) - Filters the autoload values that should be considered for autoloading from the options table.
- [`wp_default_autoload_value`](https://developer.wordpress.org/reference/hooks/wp_default_autoload_value/) - Allows to determine the default autoload value for an option where no explicit value is passed.
- [`wp_max_autoloaded_option_size`](https://developer.wordpress.org/reference/hooks/wp_max_autoloaded_option_size/) - Filters the maximum size of option value in bytes.
- [`wp_theme_files_cache_ttl`](https://developer.wordpress.org/reference/hooks/wp_theme_files_cache_ttl/) - Filters the cache expiration time for theme files.

### Changes

- [`comment_cookie_lifetime`](https://developer.wordpress.org/reference/hooks/comment_cookie_lifetime/) - The default $seconds value changed from 30000000 to YEAR_IN_SECONDS.
- [`load_translation_file`](https://developer.wordpress.org/reference/hooks/load_translation_file/) - Added the <code>$locale</code> parameter.
- [`split_the_query`](https://developer.wordpress.org/reference/hooks/split_the_query/) - Added the <code>$old_request</code> and <code>$clauses</code> parameters.
- [`wp_preload_resources`](https://developer.wordpress.org/reference/hooks/wp_preload_resources/) - Added the <code>$fetchpriority</code> attribute.

## WordPress 6.5

### New Actions

- [`after_plugin_row_meta`](https://developer.wordpress.org/reference/hooks/after_plugin_row_meta/) - Fires after plugin row meta.

### New Filters

- [`block_core_navigation_listable_blocks`](https://developer.wordpress.org/reference/hooks/block_core_navigation_listable_blocks/) - Filter the list of blocks that need a list item wrapper.
- [`font_dir`](https://developer.wordpress.org/reference/hooks/font_dir/) - Filters the fonts directory data.
- [`get_block_type_uses_context`](https://developer.wordpress.org/reference/hooks/get_block_type_uses_context/) - Filters the registered uses context for a block type.
- [`get_block_type_variations`](https://developer.wordpress.org/reference/hooks/get_block_type_variations/) - Filters the registered variations for a block type.
- [`hooked_block`](https://developer.wordpress.org/reference/hooks/hooked_block/) - Filters the parsed block array for a given hooked block.
- [`hooked_block_{$hooked_block_type}`](https://developer.wordpress.org/reference/hooks/hooked_block_hooked_block_type/) - Filters the parsed block array for a given hooked block.
- [`image_save_progressive`](https://developer.wordpress.org/reference/hooks/image_save_progressive/) - Filters whether to output progressive images (if available).
- [`load_translation_file`](https://developer.wordpress.org/reference/hooks/load_translation_file/) - Filters the file path for loading translations for the given text domain.
- [`new_admin_email_subject`](https://developer.wordpress.org/reference/hooks/new_admin_email_subject/) - Filters the subject of the email sent when a change of site admin email address is attempted.
- [`pre_get_language_files_from_path`](https://developer.wordpress.org/reference/hooks/pre_get_language_files_from_path/) - Filters the translation files retrieved from a specified path before the actual lookup.
- [`rest_font_collections_collection_params`](https://developer.wordpress.org/reference/hooks/rest_font_collections_collection_params/) - Filters REST API collection parameters for the font collections controller.
- [`rest_prepare_font_collection`](https://developer.wordpress.org/reference/hooks/rest_prepare_font_collection/) - Filters the font collection data for a REST API response.
- [`rest_prepare_wp_font_face`](https://developer.wordpress.org/reference/hooks/rest_prepare_wp_font_face/) - Filters the font face data for a REST API response.
- [`rest_prepare_wp_font_family`](https://developer.wordpress.org/reference/hooks/rest_prepare_wp_font_family/) - Filters the font family data for a REST API response.
- [`rest_wp_font_face_collection_params`](https://developer.wordpress.org/reference/hooks/rest_wp_font_face_collection_params/) - Filters collection parameters for the font face controller.
- [`rest_wp_font_family_collection_params`](https://developer.wordpress.org/reference/hooks/rest_wp_font_family_collection_params/) - Filters collection parameters for the font family controller.
- [`script_module_loader_src`](https://developer.wordpress.org/reference/hooks/script_module_loader_src/) - Filters the script module source.
- [`translation_file_format`](https://developer.wordpress.org/reference/hooks/translation_file_format/) - Filters the preferred file format for translation files.
- [`wp_admin_canonical_url`](https://developer.wordpress.org/reference/hooks/wp_admin_canonical_url/) - Filters the admin canonical URL value.
- [`wp_is_rest_endpoint`](https://developer.wordpress.org/reference/hooks/wp_is_rest_endpoint/) - Filters whether a REST endpoint request is currently being handled.
- [`wp_plugin_dependencies_slug`](https://developer.wordpress.org/reference/hooks/wp_plugin_dependencies_slug/) - Filters a plugin dependency's slug before matching to the WordPress.org slug format.

### Changes

- [`do_shortcode_tag`](https://developer.wordpress.org/reference/hooks/do_shortcode_tag/) - The <code>$attr</code> parameter is always an array.
- [`pre_do_shortcode_tag`](https://developer.wordpress.org/reference/hooks/pre_do_shortcode_tag/) - The <code>$attr</code> parameter is always an array.

## WordPress 6.4

### New Actions

- [`deprecated_class_run`](https://developer.wordpress.org/reference/hooks/deprecated_class_run/) - Fires when a deprecated class is called.
- [`wp_admin_notice`](https://developer.wordpress.org/reference/hooks/wp_admin_notice/) - Fires before an admin notice is output.
- [`wp_trigger_error_run`](https://developer.wordpress.org/reference/hooks/wp_trigger_error_run/) - Fires when the given function triggers a user-level error/warning/notice/deprecation message.

### New Filters

- [`block_widgets_no_javascript_message`](https://developer.wordpress.org/reference/hooks/block_widgets_no_javascript_message/) - Filters the message displayed in the block widget interface when JavaScript is not enabled in the browser.
- [`deprecated_class_trigger_error`](https://developer.wordpress.org/reference/hooks/deprecated_class_trigger_error/) - Filters whether to trigger an error for a deprecated class.
- [`hooked_block_types`](https://developer.wordpress.org/reference/hooks/hooked_block_types/) - Filters the list of hooked block types for a given anchor block type and relative position.
- [`pre_get_available_post_mime_types`](https://developer.wordpress.org/reference/hooks/pre_get_available_post_mime_types/) - Filters the list of available post MIME types for the given post type.
- [`pre_unzip_file`](https://developer.wordpress.org/reference/hooks/pre_unzip_file/) - Filters archive unzipping to override with a custom process.
- [`pre_wp_get_https_detection_errors`](https://developer.wordpress.org/reference/hooks/pre_wp_get_https_detection_errors/) - Short-circuits the process of detecting errors related to HTTPS support.
- [`pre_wp_get_loading_optimization_attributes`](https://developer.wordpress.org/reference/hooks/pre_wp_get_loading_optimization_attributes/) - Filters whether to short-circuit loading optimization attributes.
- [`quick_edit_enabled_for_post_type`](https://developer.wordpress.org/reference/hooks/quick_edit_enabled_for_post_type/) - Filters whether Quick Edit should be enabled for the given post type.
- [`quick_edit_enabled_for_taxonomy`](https://developer.wordpress.org/reference/hooks/quick_edit_enabled_for_taxonomy/) - Filters whether Quick Edit should be enabled for the given taxonomy.
- [`unzip_file`](https://developer.wordpress.org/reference/hooks/unzip_file/) - Filters the result of unzipping an archive.
- [`wp_admin_notice_args`](https://developer.wordpress.org/reference/hooks/wp_admin_notice_args/) - Filters the arguments for an admin notice.
- [`wp_admin_notice_markup`](https://developer.wordpress.org/reference/hooks/wp_admin_notice_markup/) - Filters the markup for an admin notice.
- [`wp_get_loading_optimization_attributes`](https://developer.wordpress.org/reference/hooks/wp_get_loading_optimization_attributes/) - Filters the loading optimization attributes.
- [`wp_loading_optimization_force_header_contexts`](https://developer.wordpress.org/reference/hooks/wp_loading_optimization_force_header_contexts/) - Filters the header-specific contexts.
- [`wp_post_revision_meta_keys`](https://developer.wordpress.org/reference/hooks/wp_post_revision_meta_keys/) - Filter the list of post meta keys to be revisioned.

### Changes

- [`_wp_put_post_revision`](https://developer.wordpress.org/reference/hooks/_wp_put_post_revision/) - The post_id parameter was added.
- [`block_editor_no_javascript_message`](https://developer.wordpress.org/reference/hooks/block_editor_no_javascript_message/) - Added <code>$installed</code> parameter.
- [`register_{$post_type}_post_type_args`](https://developer.wordpress.org/reference/hooks/register_post_type_post_type_args/) - Added <code>late_route_registration</code>, <code>autosave_rest_controller_class</code> and <code>revisions_rest_controller_class</code> arguments.
- [`wp_creating_autosave`](https://developer.wordpress.org/reference/hooks/wp_creating_autosave/) - The <code>$is_update</code> parameter was added to indicate if the autosave is being updated or was newly created.

## WordPress 6.3

### New Actions

- [`bulk_edit_posts`](https://developer.wordpress.org/reference/hooks/bulk_edit_posts/) - Fires after processing the post data for bulk edit.
- [`wp_cache_set_last_changed`](https://developer.wordpress.org/reference/hooks/wp_cache_set_last_changed/) - Fires after a cache group `last_changed` time is updated.
- [`wp_update_user`](https://developer.wordpress.org/reference/hooks/wp_update_user/) - Fires after the user has been updated and emails have been sent.

### New Filters

- [`cron_memory_limit`](https://developer.wordpress.org/reference/hooks/cron_memory_limit/) - Filters the memory limit allocated for WP-Cron event processing.
- [`get_pages_query_args`](https://developer.wordpress.org/reference/hooks/get_pages_query_args/) - Filters query arguments passed to WP_Query in get_pages.
- [`image_edit_thumbnails_separately`](https://developer.wordpress.org/reference/hooks/image_edit_thumbnails_separately/) - Shows the settings in the Image Editor that allow selecting to edit only the thumbnail of an image.
- [`nav_menu_item_attributes`](https://developer.wordpress.org/reference/hooks/nav_menu_item_attributes/) - Filters the HTML attributes applied to a menu's list item element.
- [`nav_menu_submenu_attributes`](https://developer.wordpress.org/reference/hooks/nav_menu_submenu_attributes/) - Filters the HTML attributes applied to a menu list element.
- [`plugins_list`](https://developer.wordpress.org/reference/hooks/plugins_list/) - Filters the array of plugins for the list table.
- [`pre_load_textdomain`](https://developer.wordpress.org/reference/hooks/pre_load_textdomain/) - Filters whether to short-circuit loading .mo file.
- [`pre_wp_setup_nav_menu_item`](https://developer.wordpress.org/reference/hooks/pre_wp_setup_nav_menu_item/) - Filters whether to short-circuit the wp_setup_nav_menu_item() output.
- [`site_editor_no_javascript_message`](https://developer.wordpress.org/reference/hooks/site_editor_no_javascript_message/) - Filters the message displayed in the site editor interface when JavaScript is not enabled in the browser.
- [`wp_authorize_application_redirect_url_invalid_protocols`](https://developer.wordpress.org/reference/hooks/wp_authorize_application_redirect_url_invalid_protocols/) (6.3.2) - Filters the list of invalid protocols used in applications redirect URLs.
- [`wp_get_attachment_image_context`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_image_context/) - Filters the context in which wp_get_attachment_image() is used.
- [`wp_min_priority_img_pixels`](https://developer.wordpress.org/reference/hooks/wp_min_priority_img_pixels/) - Filters the minimum square-pixels threshold for an image to be eligible as the high-priority image.
- [`wp_navigation_should_create_fallback`](https://developer.wordpress.org/reference/hooks/wp_navigation_should_create_fallback/) - Filters whether or not a fallback should be created.

### Changes

- [`pre_trash_post`](https://developer.wordpress.org/reference/hooks/pre_trash_post/) - Added the <code>$previous_status</code> parameter.
- [`rest_allowed_cors_headers`](https://developer.wordpress.org/reference/hooks/rest_allowed_cors_headers/) - The <code>$request</code> parameter was added.
- [`rest_exposed_cors_headers`](https://developer.wordpress.org/reference/hooks/rest_exposed_cors_headers/) - The <code>$request</code> parameter was added.
- [`rest_send_nocache_headers`](https://developer.wordpress.org/reference/hooks/rest_send_nocache_headers/) (6.3.2) - Moved the block to catch the filter added on rest_cookie_check_errors() from wp-includes/rest-api.php.
- [`trashed_post`](https://developer.wordpress.org/reference/hooks/trashed_post/) - Added the <code>$previous_status</code> parameter.
- [`wp_omit_loading_attr_threshold`](https://developer.wordpress.org/reference/hooks/wp_omit_loading_attr_threshold/) - The default threshold was changed from 1 to 3.
- [`wp_trash_post`](https://developer.wordpress.org/reference/hooks/wp_trash_post/) - Added the <code>$previous_status</code> parameter.

## WordPress 6.2

### New Actions

- [`comment_reply_to_unapproved_comment`](https://developer.wordpress.org/reference/hooks/comment_reply_to_unapproved_comment/) - Fires when a comment reply is attempted to an unapproved comment.
- [`wp_set_password`](https://developer.wordpress.org/reference/hooks/wp_set_password/) - Fires after the user password is set.

### New Filters

- [`comment_author_link_rel`](https://developer.wordpress.org/reference/hooks/comment_author_link_rel/) - Filters the rel attributes of the comment author's link.
- [`post_search_columns`](https://developer.wordpress.org/reference/hooks/post_search_columns/) - Filters the columns to search in a WP_Query search.
- [`pre_wp_load_alloptions`](https://developer.wordpress.org/reference/hooks/pre_wp_load_alloptions/) - Filters the array of alloptions before it is populated.
- [`sanitize_locale_name`](https://developer.wordpress.org/reference/hooks/sanitize_locale_name/) (6.2.1) - Filters a sanitized locale name string.
- [`wp_get_attachment_link_attributes`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_link_attributes/) - Filters the list of attachment link attributes.
- [`wp_internal_hosts`](https://developer.wordpress.org/reference/hooks/wp_internal_hosts/) - Filters the array of URL hosts which are considered internal.
- [`wp_save_post_revision_revisions_before_deletion`](https://developer.wordpress.org/reference/hooks/wp_save_post_revision_revisions_before_deletion/) - Filters the revisions to be considered for deletion.

### Changes

- [`override_load_textdomain`](https://developer.wordpress.org/reference/hooks/override_load_textdomain/) - Added the <code>$locale</code> parameter.
- [`send_auth_cookies`](https://developer.wordpress.org/reference/hooks/send_auth_cookies/) - The <code>$expire</code>, <code>$expiration</code>, <code>$user_id</code>, <code>$scheme</code>, and <code>$token</code> parameters were added.
- [`switch_locale`](https://developer.wordpress.org/reference/hooks/switch_locale/) - The <code>$user_id</code> parameter was added.

## WordPress 6.1

### New Actions

- [`cron_reschedule_event_error`](https://developer.wordpress.org/reference/hooks/cron_reschedule_event_error/) - Fires if an error happens when rescheduling a cron event.
- [`cron_unschedule_event_error`](https://developer.wordpress.org/reference/hooks/cron_unschedule_event_error/) - Fires if an error happens when unscheduling a cron event.
- [`wp_after_load_template`](https://developer.wordpress.org/reference/hooks/wp_after_load_template/) - Fires after a template file is loaded.
- [`wp_before_load_template`](https://developer.wordpress.org/reference/hooks/wp_before_load_template/) - Fires before a template file is loaded.

### New Filters

- [`ajax_term_search_results`](https://developer.wordpress.org/reference/hooks/ajax_term_search_results/) - Filters the Ajax term search results.
- [`block_core_navigation_render_inner_blocks`](https://developer.wordpress.org/reference/hooks/block_core_navigation_render_inner_blocks/) - Filter navigation block $inner_blocks.
- [`feed_links_extra_show_author_feed`](https://developer.wordpress.org/reference/hooks/feed_links_extra_show_author_feed/) - Filters whether to display the author feed link.
- [`feed_links_extra_show_category_feed`](https://developer.wordpress.org/reference/hooks/feed_links_extra_show_category_feed/) - Filters whether to display the category feed link.
- [`feed_links_extra_show_post_comments_feed`](https://developer.wordpress.org/reference/hooks/feed_links_extra_show_post_comments_feed/) - Filters whether to display the post comments feed link.
- [`feed_links_extra_show_post_type_archive_feed`](https://developer.wordpress.org/reference/hooks/feed_links_extra_show_post_type_archive_feed/) - Filters whether to display the post type archive feed link.
- [`feed_links_extra_show_search_feed`](https://developer.wordpress.org/reference/hooks/feed_links_extra_show_search_feed/) - Filters whether to display the search results feed link.
- [`feed_links_extra_show_tag_feed`](https://developer.wordpress.org/reference/hooks/feed_links_extra_show_tag_feed/) - Filters whether to display the tag feed link.
- [`feed_links_extra_show_tax_feed`](https://developer.wordpress.org/reference/hooks/feed_links_extra_show_tax_feed/) - Filters whether to display the custom taxonomy feed link.
- [`get_header_image`](https://developer.wordpress.org/reference/hooks/get_header_image/) - Filters the header image URL.
- [`lost_password_html_link`](https://developer.wordpress.org/reference/hooks/lost_password_html_link/) - Filters the link that allows the user to reset the lost password.
- [`post_class_taxonomies`](https://developer.wordpress.org/reference/hooks/post_class_taxonomies/) - Filters the taxonomies to generate classes for each individual term.
- [`pre_option`](https://developer.wordpress.org/reference/hooks/pre_option/) - Filters the value of all existing options before it is retrieved.
- [`pre_wp_list_authors_post_counts_query`](https://developer.wordpress.org/reference/hooks/pre_wp_list_authors_post_counts_query/) - Filters whether to short-circuit performing the query for author post counts.
- [`query_loop_block_query_vars`](https://developer.wordpress.org/reference/hooks/query_loop_block_query_vars/) - Filters the arguments which will be passed to `WP_Query` for the Query Loop Block.
- [`rest_json_encode_options`](https://developer.wordpress.org/reference/hooks/rest_json_encode_options/) - Filters the JSON encoding options used to send the REST API response.
- [`site_status_available_object_cache_services`](https://developer.wordpress.org/reference/hooks/site_status_available_object_cache_services/) - Filters the persistent object cache services available to the user.
- [`site_status_good_response_time_threshold`](https://developer.wordpress.org/reference/hooks/site_status_good_response_time_threshold/) - Filters the threshold below which a response time is considered good.
- [`site_status_page_cache_supported_cache_headers`](https://developer.wordpress.org/reference/hooks/site_status_page_cache_supported_cache_headers/) - Filters the list of cache headers supported by core.
- [`site_status_persistent_object_cache_notes`](https://developer.wordpress.org/reference/hooks/site_status_persistent_object_cache_notes/) - Filters the second paragraph of the health check's description when suggesting the use of a persistent object cache.
- [`site_status_persistent_object_cache_thresholds`](https://developer.wordpress.org/reference/hooks/site_status_persistent_object_cache_thresholds/) - Filters the thresholds used to determine whether to suggest the use of a persistent object cache.
- [`site_status_persistent_object_cache_url`](https://developer.wordpress.org/reference/hooks/site_status_persistent_object_cache_url/) - Filters the action URL for the persistent object cache health check.
- [`site_status_should_suggest_persistent_object_cache`](https://developer.wordpress.org/reference/hooks/site_status_should_suggest_persistent_object_cache/) - Filters whether to suggest use of a persistent object cache and bypass default threshold checks.
- [`the_posts_pagination_args`](https://developer.wordpress.org/reference/hooks/the_posts_pagination_args/) - Filters the arguments for posts pagination links.
- [`update_themes_{$hostname}`](https://developer.wordpress.org/reference/hooks/update_themes_hostname/) - Filters the update response for a given theme hostname.
- [`wp_img_tag_add_decoding_attr`](https://developer.wordpress.org/reference/hooks/wp_img_tag_add_decoding_attr/) - Filters the `decoding` attribute value to add to an image. Default `async`.
- [`wp_list_authors_args`](https://developer.wordpress.org/reference/hooks/wp_list_authors_args/) - Filters the query arguments for the list of all authors of the site.
- [`wp_list_table_class_name`](https://developer.wordpress.org/reference/hooks/wp_list_table_class_name/) - Filters the list table class to instantiate.
- [`wp_list_users_args`](https://developer.wordpress.org/reference/hooks/wp_list_users_args/) - Filters the query arguments for the list of all users of the site.
- [`wp_preload_resources`](https://developer.wordpress.org/reference/hooks/wp_preload_resources/) - Filters domains and URLs for resource preloads.
- [`wp_read_audio_metadata`](https://developer.wordpress.org/reference/hooks/wp_read_audio_metadata/) - Filters the array of metadata retrieved from an audio file.
- [`wp_required_field_indicator`](https://developer.wordpress.org/reference/hooks/wp_required_field_indicator/) - Filters the markup for a visual indicator of required form fields.
- [`wp_required_field_message`](https://developer.wordpress.org/reference/hooks/wp_required_field_message/) - Filters the message to explain required form fields.
- [`wp_send_new_user_notification_to_admin`](https://developer.wordpress.org/reference/hooks/wp_send_new_user_notification_to_admin/) - Filters whether the admin is notified of a new user registration.
- [`wp_send_new_user_notification_to_user`](https://developer.wordpress.org/reference/hooks/wp_send_new_user_notification_to_user/) - Filters whether the user is notified of their new user registration.
- [`wp_theme_json_data_blocks`](https://developer.wordpress.org/reference/hooks/wp_theme_json_data_blocks/) - Filters the data provided by the blocks for global styles & settings.
- [`wp_theme_json_data_default`](https://developer.wordpress.org/reference/hooks/wp_theme_json_data_default/) - Filters the default data provided by WordPress for global styles & settings.
- [`wp_theme_json_data_theme`](https://developer.wordpress.org/reference/hooks/wp_theme_json_data_theme/) - Filters the data provided by the theme for global styles and settings.
- [`wp_theme_json_data_user`](https://developer.wordpress.org/reference/hooks/wp_theme_json_data_user/) - Filters the data provided by the user for global styles & settings.
- [`wp_theme_json_get_style_nodes`](https://developer.wordpress.org/reference/hooks/wp_theme_json_get_style_nodes/) - Filters the list of style nodes with metadata.

### Changes

- [`core_version_check_query_args`](https://developer.wordpress.org/reference/hooks/core_version_check_query_args/) - Added <code>$extensions</code>, <code>$platform_flags</code>, and <code>$image_support</code> to the <code>$query</code> parameter.
- [`create_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/create_taxonomy/) - The <code>$args</code> parameter was added.
- [`create_term`](https://developer.wordpress.org/reference/hooks/create_term/) - The <code>$args</code> parameter was added.
- [`created_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/created_taxonomy/) - The <code>$args</code> parameter was added.
- [`created_term`](https://developer.wordpress.org/reference/hooks/created_term/) - The <code>$args</code> parameter was added.
- [`edit_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/edit_taxonomy/) - The <code>$args</code> parameter was added.
- [`edit_term_taxonomy`](https://developer.wordpress.org/reference/hooks/edit_term_taxonomy/) - The <code>$args</code> parameter was added.
- [`edit_term`](https://developer.wordpress.org/reference/hooks/edit_term/) - The <code>$args</code> parameter was added.
- [`edit_terms`](https://developer.wordpress.org/reference/hooks/edit_terms/) - The <code>$args</code> parameter was added.
- [`edited_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/edited_taxonomy/) - The <code>$args</code> parameter was added.
- [`edited_term_taxonomy`](https://developer.wordpress.org/reference/hooks/edited_term_taxonomy/) - The <code>$args</code> parameter was added.
- [`edited_term`](https://developer.wordpress.org/reference/hooks/edited_term/) - The <code>$args</code> parameter was added.
- [`edited_terms`](https://developer.wordpress.org/reference/hooks/edited_terms/) - The <code>$args</code> parameter was added.
- [`install_themes_{$tab}`](https://developer.wordpress.org/reference/hooks/install_themes_tab/) - Added the <code>install_themes_block-themes</code> hook name.
- [`install_themes_pre_{$tab}`](https://developer.wordpress.org/reference/hooks/install_themes_pre_tab/) - Added the <code>install_themes_pre_block-themes</code> hook name.
- [`nonce_life`](https://developer.wordpress.org/reference/hooks/nonce_life/) - Added <code>$action</code> argument to allow for more targeted filters.
- [`override_unload_textdomain`](https://developer.wordpress.org/reference/hooks/override_unload_textdomain/) - Added the <code>$reloadable</code> parameter.
- [`pre_insert_term`](https://developer.wordpress.org/reference/hooks/pre_insert_term/) - The <code>$args</code> parameter was added.
- [`saved_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/saved_taxonomy/) - The <code>$args</code> parameter was added.
- [`saved_term`](https://developer.wordpress.org/reference/hooks/saved_term/) - The <code>$args</code> parameter was added.
- [`term_id_filter`](https://developer.wordpress.org/reference/hooks/term_id_filter/) - The <code>$args</code> parameter was added.
- [`unload_textdomain`](https://developer.wordpress.org/reference/hooks/unload_textdomain/) - Added the <code>$reloadable</code> parameter.
- [`wp_sitemaps_posts_query_args`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_posts_query_args/) - Added <code>ignore_sticky_posts</code> default parameter.

## WordPress 6.0

### New Actions

- [`registered_post_type_{$post_type}`](https://developer.wordpress.org/reference/hooks/registered_post_type_post_type/) - Fires after a specific post type is registered.
- [`registered_taxonomy_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/registered_taxonomy_taxonomy/) - Fires after a specific taxonomy is registered.

### New Filters

- [`media_date_column_time`](https://developer.wordpress.org/reference/hooks/media_date_column_time/) - Filters the published time of an attachment displayed in the Media list table.
- [`plugin_install_description`](https://developer.wordpress.org/reference/hooks/plugin_install_description/) - Filters the plugin card description on the Add Plugins screen.
- [`pre_wp_filesize`](https://developer.wordpress.org/reference/hooks/pre_wp_filesize/) - Filters the result of wp_filesize before the PHP function is run.
- [`register_{$post_type}_post_type_args`](https://developer.wordpress.org/reference/hooks/register_post_type_post_type_args/) - Filters the arguments for registering a specific post type.
- [`register_{$taxonomy}_taxonomy_args`](https://developer.wordpress.org/reference/hooks/register_taxonomy_taxonomy_args/) - Filters the arguments for registering a specific taxonomy.
- [`retrieve_password_notification_email`](https://developer.wordpress.org/reference/hooks/retrieve_password_notification_email/) - Filters the contents of the reset password notification email sent to the user.
- [`send_retrieve_password_email`](https://developer.wordpress.org/reference/hooks/send_retrieve_password_email/) - Filters whether to send the retrieve password email.
- [`term_exists_default_query_args`](https://developer.wordpress.org/reference/hooks/term_exists_default_query_args/) - Filters default query arguments for checking if a term exists.
- [`the_author_link`](https://developer.wordpress.org/reference/hooks/the_author_link/) - Filters the author URL link HTML.
- [`wp_admin_bar_show_site_icons`](https://developer.wordpress.org/reference/hooks/wp_admin_bar_show_site_icons/) - Filters whether to show the site icons in toolbar.
- [`wp_allow_query_attachment_by_filename`](https://developer.wordpress.org/reference/hooks/wp_allow_query_attachment_by_filename/) (6.0.3) - Filters whether an attachment query should include filenames or not.
- [`wp_content_img_tag`](https://developer.wordpress.org/reference/hooks/wp_content_img_tag/) - Filters an img tag within the content for a given context.
- [`wp_filesize`](https://developer.wordpress.org/reference/hooks/wp_filesize/) - Filters the size of the file.
- [`wp_is_large_user_count`](https://developer.wordpress.org/reference/hooks/wp_is_large_user_count/) - Filters whether the site is considered large, based on its number of users.

### Changes

- [`rest_index`](https://developer.wordpress.org/reference/hooks/rest_index/) - Added <code>$request</code> parameter.
- [`wp_insert_attachment_data`](https://developer.wordpress.org/reference/hooks/wp_insert_attachment_data/) - The <code>$update</code> parameter was added.
- [`wp_insert_post_data`](https://developer.wordpress.org/reference/hooks/wp_insert_post_data/) - The <code>$update</code> parameter was added.
- [`wp_sitemaps_taxonomies_entry`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_taxonomies_entry/) - Added <code>$term</code> argument containing the term object.

## WordPress 5.9

### New Actions

- [`render_block_core_template_part_file`](https://developer.wordpress.org/reference/hooks/render_block_core_template_part_file/) - Fires when a block template part is loaded from a template part in the theme.
- [`render_block_core_template_part_none`](https://developer.wordpress.org/reference/hooks/render_block_core_template_part_none/) - Fires when a requested block template part does not exist in the database nor in the theme.
- [`render_block_core_template_part_post`](https://developer.wordpress.org/reference/hooks/render_block_core_template_part_post/) - Fires when a block template part is loaded from a template post stored in the database.
- [`rest_after_insert_nav_menu_item`](https://developer.wordpress.org/reference/hooks/rest_after_insert_nav_menu_item/) - Fires after a single menu item is completely created or updated via the REST API.
- [`rest_delete_nav_menu_item`](https://developer.wordpress.org/reference/hooks/rest_delete_nav_menu_item/) - Fires immediately after a single menu item is deleted via the REST API.
- [`rest_insert_nav_menu_item`](https://developer.wordpress.org/reference/hooks/rest_insert_nav_menu_item/) - Fires after a single menu item is created or updated via the REST API.
- [`wp_mail_succeeded`](https://developer.wordpress.org/reference/hooks/wp_mail_succeeded/) - Fires after PHPMailer has successfully sent an email.

### New Filters

- [`block_core_navigation_render_fallback`](https://developer.wordpress.org/reference/hooks/block_core_navigation_render_fallback/) - Filters the fallback experience for the Navigation block.
- [`default_template_types`](https://developer.wordpress.org/reference/hooks/default_template_types/) - Filters the list of default template types.
- [`default_wp_template_part_areas`](https://developer.wordpress.org/reference/hooks/default_wp_template_part_areas/) - Filters the list of allowed template part area values.
- [`get_block_file_template`](https://developer.wordpress.org/reference/hooks/get_block_file_template/) - Filters the block template object after it has been (potentially) fetched from the theme file.
- [`get_block_template`](https://developer.wordpress.org/reference/hooks/get_block_template/) - Filters the queried block template object after it's been fetched.
- [`get_block_templates`](https://developer.wordpress.org/reference/hooks/get_block_templates/) - Filters the array of queried block templates array after they've been fetched.
- [`get_header_image_tag_attributes`](https://developer.wordpress.org/reference/hooks/get_header_image_tag_attributes/) - Filters the list of header image attributes.
- [`http_allowed_safe_ports`](https://developer.wordpress.org/reference/hooks/http_allowed_safe_ports/) - Controls the list of ports considered safe in HTTP API.
- [`insert_custom_user_meta`](https://developer.wordpress.org/reference/hooks/insert_custom_user_meta/) - Filters a user's custom meta values and keys immediately after the user is created or updated and before any user meta is inserted or updated.
- [`is_post_status_viewable`](https://developer.wordpress.org/reference/hooks/is_post_status_viewable/) - Filters whether a post status is considered "viewable".
- [`is_post_type_viewable`](https://developer.wordpress.org/reference/hooks/is_post_type_viewable/) - Filters whether a post type is considered "viewable".
- [`login_display_language_dropdown`](https://developer.wordpress.org/reference/hooks/login_display_language_dropdown/) - Filters whether to display the Language selector on the login screen.
- [`login_language_dropdown_args`](https://developer.wordpress.org/reference/hooks/login_language_dropdown_args/) - Filters default arguments for the Languages select input on the login screen.
- [`post_thumbnail_id`](https://developer.wordpress.org/reference/hooks/post_thumbnail_id/) - Filters the post thumbnail ID.
- [`post_thumbnail_url`](https://developer.wordpress.org/reference/hooks/post_thumbnail_url/) - Filters the post thumbnail URL.
- [`pre_get_block_file_template`](https://developer.wordpress.org/reference/hooks/pre_get_block_file_template/) - Filters the block template object before the theme file discovery takes place.
- [`pre_get_block_template`](https://developer.wordpress.org/reference/hooks/pre_get_block_template/) - Filters the block template object before the query takes place.
- [`pre_get_block_templates`](https://developer.wordpress.org/reference/hooks/pre_get_block_templates/) - Filters the block templates array before the query takes place.
- [`rest_pre_insert_nav_menu_item`](https://developer.wordpress.org/reference/hooks/rest_pre_insert_nav_menu_item/) - Filters a menu item before it is inserted via the REST API.
- [`rest_prepare_menu_location`](https://developer.wordpress.org/reference/hooks/rest_prepare_menu_location/) - Filters menu location data returned from the REST API.
- [`rest_prepare_nav_menu_item`](https://developer.wordpress.org/reference/hooks/rest_prepare_nav_menu_item/) - Filters the menu item data for a REST API response.
- [`rest_prepare_url_details`](https://developer.wordpress.org/reference/hooks/rest_prepare_url_details/) - Filters the URL data for the response.
- [`rest_route_for_post_type_items`](https://developer.wordpress.org/reference/hooks/rest_route_for_post_type_items/) - Filters the REST API route for a post type.
- [`rest_route_for_taxonomy_items`](https://developer.wordpress.org/reference/hooks/rest_route_for_taxonomy_items/) - Filters the REST API route for a taxonomy.
- [`rest_url_details_cache_expiration`](https://developer.wordpress.org/reference/hooks/rest_url_details_cache_expiration/) - Filters the cache expiration.
- [`rest_url_details_http_request_args`](https://developer.wordpress.org/reference/hooks/rest_url_details_http_request_args/) - Filters the HTTP request args for URL data retrieval.
- [`rss_widget_feed_link`](https://developer.wordpress.org/reference/hooks/rss_widget_feed_link/) - Filters the classic RSS widget's feed icon link.
- [`wp_omit_loading_attr_threshold`](https://developer.wordpress.org/reference/hooks/wp_omit_loading_attr_threshold/) - Filters the threshold for how many of the first content media elements to not lazy-load.

### Changes

- [`{$new_status}_{$post->post_type}`](https://developer.wordpress.org/reference/hooks/new_status_post-post_type/) - Added <code>$old_status</code> parameter.
- [`pre_render_block`](https://developer.wordpress.org/reference/hooks/pre_render_block/) - The <code>$parent_block</code> parameter was added.
- [`registration_redirect`](https://developer.wordpress.org/reference/hooks/registration_redirect/) - Added the <code>$errors</code> parameter.
- [`render_block_{$this->name}`](https://developer.wordpress.org/reference/hooks/render_block_this-name/) - The <code>$instance</code> parameter was added.
- [`render_block_context`](https://developer.wordpress.org/reference/hooks/render_block_context/) - The <code>$parent_block</code> parameter was added.
- [`render_block_data`](https://developer.wordpress.org/reference/hooks/render_block_data/) - The <code>$parent_block</code> parameter was added.
- [`render_block`](https://developer.wordpress.org/reference/hooks/render_block/) - The <code>$instance</code> parameter was added.

## WordPress 5.8

### New Actions

- [`delete_theme`](https://developer.wordpress.org/reference/hooks/delete_theme/) - Fires immediately before a theme deletion attempt.
- [`deleted_theme`](https://developer.wordpress.org/reference/hooks/deleted_theme/) - Fires immediately after a theme deletion attempt.
- [`rest_after_save_widget`](https://developer.wordpress.org/reference/hooks/rest_after_save_widget/) - Fires after a widget is created or updated via the REST API.
- [`rest_delete_widget`](https://developer.wordpress.org/reference/hooks/rest_delete_widget/) - Fires after a widget is deleted via the REST API.
- [`rest_save_sidebar`](https://developer.wordpress.org/reference/hooks/rest_save_sidebar/) - Fires after a sidebar is updated via the REST API.
- [`site_health_tab_content`](https://developer.wordpress.org/reference/hooks/site_health_tab_content/) - Fires when outputting the content of a custom Site Health tab.

### New Filters

- [`allowed_block_types_all`](https://developer.wordpress.org/reference/hooks/allowed_block_types_all/) - Filters the allowed block types for all editor types.
- [`block_categories_all`](https://developer.wordpress.org/reference/hooks/block_categories_all/) - Filters the default array of categories for block types.
- [`block_editor_rest_api_preload_paths`](https://developer.wordpress.org/reference/hooks/block_editor_rest_api_preload_paths/) - Filters the array of REST API paths that will be used to preloaded common data for the block editor.
- [`block_editor_settings_all`](https://developer.wordpress.org/reference/hooks/block_editor_settings_all/) - Filters the settings to pass to the block editor for all editor type.
- [`document_title`](https://developer.wordpress.org/reference/hooks/document_title/) - Filters the document title.
- [`enable_loading_object_cache_dropin`](https://developer.wordpress.org/reference/hooks/enable_loading_object_cache_dropin/) - Filters whether to enable loading of the object-cache.php drop-in.
- [`excerpt_allowed_wrapper_blocks`](https://developer.wordpress.org/reference/hooks/excerpt_allowed_wrapper_blocks/) - Filters the list of blocks that can be used as wrapper blocks, allowing excerpts to be generated from the `innerBlocks` of these wrappers.
- [`image_editor_output_format`](https://developer.wordpress.org/reference/hooks/image_editor_output_format/) - Filters the image editor output format mapping.
- [`media_library_infinite_scrolling`](https://developer.wordpress.org/reference/hooks/media_library_infinite_scrolling/) - Filters whether the Media Library grid has infinite scrolling. Default `false`.
- [`rest_pattern_directory_collection_params`](https://developer.wordpress.org/reference/hooks/rest_pattern_directory_collection_params/) - Filter collection parameters for the block pattern directory controller.
- [`rest_prepare_block_pattern`](https://developer.wordpress.org/reference/hooks/rest_prepare_block_pattern/) - Filters the REST API response for a block pattern.
- [`rest_prepare_sidebar`](https://developer.wordpress.org/reference/hooks/rest_prepare_sidebar/) - Filters the REST API response for a sidebar.
- [`rest_prepare_widget`](https://developer.wordpress.org/reference/hooks/rest_prepare_widget/) - Filters the REST API response for a widget.
- [`rest_prepare_widget_type`](https://developer.wordpress.org/reference/hooks/rest_prepare_widget_type/) - Filters the REST API response for a widget type.
- [`should_load_remote_block_patterns`](https://developer.wordpress.org/reference/hooks/should_load_remote_block_patterns/) - Filter to disable remote block patterns.
- [`should_load_separate_core_block_assets`](https://developer.wordpress.org/reference/hooks/should_load_separate_core_block_assets/) - Filters whether block styles should be loaded separately.
- [`site_health_navigation_tabs`](https://developer.wordpress.org/reference/hooks/site_health_navigation_tabs/) - Filters the extra tabs for the Site Health navigation bar.
- [`styles_inline_size_limit`](https://developer.wordpress.org/reference/hooks/styles_inline_size_limit/) - The maximum size of inlined styles in bytes.
- [`update_plugins_{$hostname}`](https://developer.wordpress.org/reference/hooks/update_plugins_hostname/) - Filters the update response for a given plugin hostname.
- [`use_widgets_block_editor`](https://developer.wordpress.org/reference/hooks/use_widgets_block_editor/) - Filters whether to use the block editor to manage widgets.
- [`user_erasure_fulfillment_email_content`](https://developer.wordpress.org/reference/hooks/user_erasure_fulfillment_email_content/) - Filters the body of the data erasure fulfillment notification.
- [`user_erasure_fulfillment_email_headers`](https://developer.wordpress.org/reference/hooks/user_erasure_fulfillment_email_headers/) - Filters the headers of the data erasure fulfillment notification.
- [`user_erasure_fulfillment_email_subject`](https://developer.wordpress.org/reference/hooks/user_erasure_fulfillment_email_subject/) - Filters the subject of the email sent when an erasure request is completed.
- [`user_request_confirmed_email_content`](https://developer.wordpress.org/reference/hooks/user_request_confirmed_email_content/) - Filters the body of the user request confirmation email.
- [`widget_block_content`](https://developer.wordpress.org/reference/hooks/widget_block_content/) - Filters the content of the Block widget before output.
- [`widget_block_dynamic_classname`](https://developer.wordpress.org/reference/hooks/widget_block_dynamic_classname/) - The classname used in the block widget's container HTML.
- [`widget_types_to_hide_from_legacy_widget_block`](https://developer.wordpress.org/reference/hooks/widget_types_to_hide_from_legacy_widget_block/) - Filters the list of widget-type IDs that should **not** be offered by the Legacy Widget block.
- [`wp_{$post->post_type}_revisions_to_keep`](https://developer.wordpress.org/reference/hooks/wp_post-post_type_revisions_to_keep/) - Filters the number of revisions to save for the given post by its post type.

### Changes

- [`admin_url`](https://developer.wordpress.org/reference/hooks/admin_url/) - The <code>$scheme</code> parameter was added.
- [`image_sideload_extensions`](https://developer.wordpress.org/reference/hooks/image_sideload_extensions/) - Added 'webp' to the default list of allowed file extensions.
- [`includes_url`](https://developer.wordpress.org/reference/hooks/includes_url/) - The <code>$scheme</code> parameter was added.
- [`insert_user_meta`](https://developer.wordpress.org/reference/hooks/insert_user_meta/) - The <code>$userdata</code> parameter was added.
- [`network_admin_url`](https://developer.wordpress.org/reference/hooks/network_admin_url/) - The <code>$scheme</code> parameter was added.
- [`profile_update`](https://developer.wordpress.org/reference/hooks/profile_update/) - The <code>$userdata</code> parameter was added.
- [`the_password_form`](https://developer.wordpress.org/reference/hooks/the_password_form/) - Added the <code>$post</code> parameter.
- [`user_admin_url`](https://developer.wordpress.org/reference/hooks/user_admin_url/) - The <code>$scheme</code> parameter was added.
- [`user_register`](https://developer.wordpress.org/reference/hooks/user_register/) - The <code>$userdata</code> parameter was added.
- [`wp_pre_insert_user_data`](https://developer.wordpress.org/reference/hooks/wp_pre_insert_user_data/) - The <code>$userdata</code> parameter was added.
- [`wp_unique_filename`](https://developer.wordpress.org/reference/hooks/wp_unique_filename/) (5.8.1) - The <code>$alt_filenames</code> and <code>$number</code> parameters were added.
- [`write_your_story`](https://developer.wordpress.org/reference/hooks/write_your_story/) - Changed the default placeholder text.

## WordPress 5.7

### New Actions

- [`manage_{$this->screen->id}_custom_column`](https://developer.wordpress.org/reference/hooks/manage_this-screen-id_custom_column/) - Fires for each custom column of a specific request type in the Privacy Requests list table.

### New Filters

- [`block_type_metadata`](https://developer.wordpress.org/reference/hooks/block_type_metadata/) - Filters the metadata provided for registering a block type.
- [`block_type_metadata_settings`](https://developer.wordpress.org/reference/hooks/block_type_metadata_settings/) - Filters the settings determined from the block type metadata.
- [`login_site_html_link`](https://developer.wordpress.org/reference/hooks/login_site_html_link/) - Filters the "Go to site" link displayed in the login page footer.
- [`lostpassword_user_data`](https://developer.wordpress.org/reference/hooks/lostpassword_user_data/) - Filters the user data during a password reset request.
- [`paginate_links_output`](https://developer.wordpress.org/reference/hooks/paginate_links_output/) - Filters the HTML output of paginated links for archives.
- [`pre_months_dropdown_query`](https://developer.wordpress.org/reference/hooks/pre_months_dropdown_query/) - Filters whether to short-circuit performing the months dropdown query.
- [`pre_wp_mail`](https://developer.wordpress.org/reference/hooks/pre_wp_mail/) - Filters whether to preempt sending an email.
- [`render_block_{$this->name}`](https://developer.wordpress.org/reference/hooks/render_block_this-name/) - Filters the content of a single block.
- [`the_title_export`](https://developer.wordpress.org/reference/hooks/the_title_export/) - Filters the post title used for WXR exports.
- [`update_post_term_count_statuses`](https://developer.wordpress.org/reference/hooks/update_post_term_count_statuses/) - Filters the post statuses for updating the term count.
- [`upgrader_install_package_result`](https://developer.wordpress.org/reference/hooks/upgrader_install_package_result/) - Filters the result of WP_Upgrader::install_package().
- [`wp_direct_update_https_url`](https://developer.wordpress.org/reference/hooks/wp_direct_update_https_url/) - Filters the URL for directly updating the PHP version the site is running on from the host.
- [`wp_iframe_tag_add_loading_attr`](https://developer.wordpress.org/reference/hooks/wp_iframe_tag_add_loading_attr/) - Filters the `loading` attribute value to add to an iframe. Default `lazy`.
- [`wp_image_src_get_dimensions`](https://developer.wordpress.org/reference/hooks/wp_image_src_get_dimensions/) - Filters the 'wp_image_src_get_dimensions' value.
- [`wp_inline_script_attributes`](https://developer.wordpress.org/reference/hooks/wp_inline_script_attributes/) - Filters attributes to be added to a script tag.
- [`wp_list_table_show_post_checkbox`](https://developer.wordpress.org/reference/hooks/wp_list_table_show_post_checkbox/) - Filters whether to show the bulk edit checkbox for a post in its list table.
- [`wp_robots`](https://developer.wordpress.org/reference/hooks/wp_robots/) - Filters the directives to be included in the 'robots' meta tag.
- [`wp_script_attributes`](https://developer.wordpress.org/reference/hooks/wp_script_attributes/) - Filters attributes to be added to a script tag.
- [`wp_should_replace_insecure_home_url`](https://developer.wordpress.org/reference/hooks/wp_should_replace_insecure_home_url/) - Filters whether WordPress should replace old HTTP URLs to the site with their HTTPS counterpart.
- [`wp_update_https_url`](https://developer.wordpress.org/reference/hooks/wp_update_https_url/) - Filters the URL to learn more about updating the HTTPS version the site is running on.
- [`{$action}_overrides`](https://developer.wordpress.org/reference/hooks/action_overrides/) - Filters the override parameters for a file before it is uploaded to WordPress.

### Changes

- [`get_post_status`](https://developer.wordpress.org/reference/hooks/get_post_status/) - The attachment post type is now passed through this filter.
- [`pre_clear_scheduled_hook`](https://developer.wordpress.org/reference/hooks/pre_clear_scheduled_hook/) - The <code>$wp_error</code> parameter was added, and a <code>WP_Error</code> object can now be returned.
- [`pre_reschedule_event`](https://developer.wordpress.org/reference/hooks/pre_reschedule_event/) - The <code>$wp_error</code> parameter was added, and a <code>WP_Error</code> object can now be returned.
- [`pre_schedule_event`](https://developer.wordpress.org/reference/hooks/pre_schedule_event/) - The <code>$wp_error</code> parameter was added, and a <code>WP_Error</code> object can now be returned.
- [`pre_unschedule_event`](https://developer.wordpress.org/reference/hooks/pre_unschedule_event/) - The <code>$wp_error</code> parameter was added, and a <code>WP_Error</code> object can now be returned.
- [`pre_unschedule_hook`](https://developer.wordpress.org/reference/hooks/pre_unschedule_hook/) - The <code>$wp_error</code> parameter was added, and a <code>WP_Error</code> object can now be returned.
- [`rest_{$this->post_type}_query`](https://developer.wordpress.org/reference/hooks/rest_this-post_type_query/) - Moved after the <code>tax_query</code> query arg is generated.
- [`xmlrpc_call`](https://developer.wordpress.org/reference/hooks/xmlrpc_call/) - Added the <code>$args</code> and <code>$server</code> parameters.

## WordPress 5.6

### New Actions

- [`after_core_auto_updates_settings`](https://developer.wordpress.org/reference/hooks/after_core_auto_updates_settings/) - Fires after the major core auto-update settings.
- [`application_password_did_authenticate`](https://developer.wordpress.org/reference/hooks/application_password_did_authenticate/) - Fires after an application password was used for authentication.
- [`application_password_failed_authentication`](https://developer.wordpress.org/reference/hooks/application_password_failed_authentication/) - Fires when an application password failed to authenticate the user.
- [`do_all_pings`](https://developer.wordpress.org/reference/hooks/do_all_pings/) - Fires immediately after the `do_pings` event to hook services individually.
- [`is_wp_error_instance`](https://developer.wordpress.org/reference/hooks/is_wp_error_instance/) - Fires when `is_wp_error()` is called and its parameter is an instance of `WP_Error`.
- [`manage_{$this->screen->id}_custom_column`](https://developer.wordpress.org/reference/hooks/manage_this-screen-id_custom_column/) - Fires for each custom column in the Application Passwords list table.
- [`manage_{$this->screen->id}_custom_column_js_template`](https://developer.wordpress.org/reference/hooks/manage_this-screen-id_custom_column_js_template/) - Fires in the JavaScript row template for each custom column in the Application Passwords list table.
- [`network_site_info_form`](https://developer.wordpress.org/reference/hooks/network_site_info_form/) - Fires at the end of the site info form in network admin.
- [`rest_after_insert_application_password`](https://developer.wordpress.org/reference/hooks/rest_after_insert_application_password/) - Fires after a single application password is completely created or updated via the REST API.
- [`wp_after_insert_post`](https://developer.wordpress.org/reference/hooks/wp_after_insert_post/) - Fires once a post, its terms and meta data has been saved.
- [`wp_authenticate_application_password_errors`](https://developer.wordpress.org/reference/hooks/wp_authenticate_application_password_errors/) - Fires when an application password has been successfully checked as valid.
- [`wp_authorize_application_password_form`](https://developer.wordpress.org/reference/hooks/wp_authorize_application_password_form/) - Fires in the Authorize Application Password form before the submit buttons.
- [`wp_authorize_application_password_form_approved_no_js`](https://developer.wordpress.org/reference/hooks/wp_authorize_application_password_form_approved_no_js/) - Fires in the Authorize Application Password new password section in the no-JS version.
- [`wp_authorize_application_password_request_errors`](https://developer.wordpress.org/reference/hooks/wp_authorize_application_password_request_errors/) - Fires before application password errors are returned.
- [`wp_create_application_password`](https://developer.wordpress.org/reference/hooks/wp_create_application_password/) - Fires when an application password is created.
- [`wp_create_application_password_form`](https://developer.wordpress.org/reference/hooks/wp_create_application_password_form/) - Fires in the create Application Passwords form.
- [`wp_delete_application_password`](https://developer.wordpress.org/reference/hooks/wp_delete_application_password/) - Fires when an application password is deleted.
- [`wp_error_added`](https://developer.wordpress.org/reference/hooks/wp_error_added/) - Fires when an error is added to a WP_Error object.
- [`wp_update_application_password`](https://developer.wordpress.org/reference/hooks/wp_update_application_password/) - Fires when an application password is updated.

### New Filters

- [`application_password_is_api_request`](https://developer.wordpress.org/reference/hooks/application_password_is_api_request/) - Filters whether this is an API request that Application Passwords can be used on.
- [`block_default_classname`](https://developer.wordpress.org/reference/hooks/block_default_classname/) - Filters the default block className for server rendered blocks.
- [`comments_template_top_level_query_args`](https://developer.wordpress.org/reference/hooks/comments_template_top_level_query_args/) - Filters the arguments used in the top level comments query.
- [`email_exists`](https://developer.wordpress.org/reference/hooks/email_exists/) - Filters whether the given email exists.
- [`image_sideload_extensions`](https://developer.wordpress.org/reference/hooks/image_sideload_extensions/) - Filters the list of allowed file extensions when sideloading an image from a URL.
- [`invited_user_email`](https://developer.wordpress.org/reference/hooks/invited_user_email/) - Filters the contents of the email sent when an existing user is invited to join the site.
- [`new_site_email`](https://developer.wordpress.org/reference/hooks/new_site_email/) - Filters the content of the email sent to the Multisite network administrator when a new site is created.
- [`pre_recurse_dirsize`](https://developer.wordpress.org/reference/hooks/pre_recurse_dirsize/) - Filters the amount of storage space used by one directory and all its children, in megabytes.
- [`quick_edit_dropdown_authors_args`](https://developer.wordpress.org/reference/hooks/quick_edit_dropdown_authors_args/) - Filters the arguments used to generate the Quick Edit authors drop-down.
- [`rest_get_max_batch_size`](https://developer.wordpress.org/reference/hooks/rest_get_max_batch_size/) - Filters the maximum number of REST API requests that can be included in a batch.
- [`rest_post_format_search_query`](https://developer.wordpress.org/reference/hooks/rest_post_format_search_query/) - Filters the query arguments for a REST API post format search request.
- [`rest_pre_insert_application_password`](https://developer.wordpress.org/reference/hooks/rest_pre_insert_application_password/) - Filters an application password before it is inserted via the REST API.
- [`rest_prepare_application_password`](https://developer.wordpress.org/reference/hooks/rest_prepare_application_password/) - Filters the REST API response for an application password.
- [`rest_term_search_query`](https://developer.wordpress.org/reference/hooks/rest_term_search_query/) - Filters the query arguments for a REST API term search request.
- [`send_new_site_email`](https://developer.wordpress.org/reference/hooks/send_new_site_email/) - Filters whether to send an email to the Multisite network administrator when a new site is created.
- [`should_load_block_editor_scripts_and_styles`](https://developer.wordpress.org/reference/hooks/should_load_block_editor_scripts_and_styles/) - Filters the flag that decides whether or not block editor scripts and styles are going to be enqueued on the current screen.
- [`site_health_test_rest_capability_{$check}`](https://developer.wordpress.org/reference/hooks/site_health_test_rest_capability_check/) - Filters the capability needed to run a given Site Health check.
- [`wp_get_attachment_image`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_image/) - Filters the HTML img element representing an image attachment.
- [`wp_installed_email`](https://developer.wordpress.org/reference/hooks/wp_installed_email/) - Filters the contents of the email sent to the site administrator when WordPress is installed.
- [`wp_is_application_passwords_available`](https://developer.wordpress.org/reference/hooks/wp_is_application_passwords_available/) - Filters whether Application Passwords is available.
- [`wp_is_application_passwords_available_for_user`](https://developer.wordpress.org/reference/hooks/wp_is_application_passwords_available_for_user/) - Filters whether Application Passwords is available for a specific user.
- [`wp_is_site_protected_by_basic_auth`](https://developer.wordpress.org/reference/hooks/wp_is_site_protected_by_basic_auth/) (5.6.1) - Filters whether a site is protected by HTTP Basic Auth.
- [`wp_untrash_post_status`](https://developer.wordpress.org/reference/hooks/wp_untrash_post_status/) - Filters the status that a post gets assigned when it is restored from the trash (untrashed).

### Changes

- [`attachment_link`](https://developer.wordpress.org/reference/hooks/attachment_link/) - Providing an empty string will now disable the view attachment page link on the media modal.
- [`bulk_actions-{$this->screen->id}`](https://developer.wordpress.org/reference/hooks/bulk_actions-this-screen-id/) - A bulk action can now contain an array of options in order to create an optgroup.
- [`comments_pre_query`](https://developer.wordpress.org/reference/hooks/comments_pre_query/) - The returned array of comment data is assigned to the <code>comments</code> property of the current WP_Comment_Query instance.
- [`image_send_to_editor`](https://developer.wordpress.org/reference/hooks/image_send_to_editor/) - The <code>$rel</code> parameter was added.
- [`manage_comments_nav`](https://developer.wordpress.org/reference/hooks/manage_comments_nav/) - The <code>$which</code> parameter was added.
- [`networks_pre_query`](https://developer.wordpress.org/reference/hooks/networks_pre_query/) - The returned array of network data is assigned to the <code>networks</code> property of the current WP_Network_Query instance.
- [`pre_untrash_post`](https://developer.wordpress.org/reference/hooks/pre_untrash_post/) - Added the <code>$previous_status</code> parameter.
- [`preprocess_comment`](https://developer.wordpress.org/reference/hooks/preprocess_comment/) - Comment data includes the <code>comment_agent</code> and <code>comment_author_IP</code> values.
- [`quick_edit_dropdown_pages_args`](https://developer.wordpress.org/reference/hooks/quick_edit_dropdown_pages_args/) - The <code>$bulk</code> parameter was added.
- [`recovery_mode_email`](https://developer.wordpress.org/reference/hooks/recovery_mode_email/) - The <code>$email</code> argument includes the <code>attachments</code> key.
- [`site_status_tests`](https://developer.wordpress.org/reference/hooks/site_status_tests/) - Added the <code>async_direct_test</code> array key for asynchronous tests. Added the <code>skip_cron</code> array key for all tests.
- [`sites_pre_query`](https://developer.wordpress.org/reference/hooks/sites_pre_query/) - The returned array of site data is assigned to the <code>sites</code> property of the current WP_Site_Query instance.
- [`untrash_post`](https://developer.wordpress.org/reference/hooks/untrash_post/) - Added the <code>$previous_status</code> parameter.
- [`untrashed_post`](https://developer.wordpress.org/reference/hooks/untrashed_post/) - Added the <code>$previous_status</code> parameter.
- [`wp_authorize_application_password_form_approved_no_js`](https://developer.wordpress.org/reference/hooks/wp_authorize_application_password_form_approved_no_js/) (5.6.1) - Corrected action name and signature.

## WordPress 5.5

### New Actions

- [`customize_controls_head`](https://developer.wordpress.org/reference/hooks/customize_controls_head/) - Fires in head section of Customizer controls.
- [`register_setting`](https://developer.wordpress.org/reference/hooks/register_setting/) - Fires immediately before the setting is registered but after its filters are in place.
- [`saved_term`](https://developer.wordpress.org/reference/hooks/saved_term/) - Fires after a term has been saved, and the term cache has been cleared.
- [`saved_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/saved_taxonomy/) - Fires after a term in a specific taxonomy has been saved, and the term cache has been cleared.
- [`set_404`](https://developer.wordpress.org/reference/hooks/set_404/) - Fires after a 404 is triggered.
- [`unregister_setting`](https://developer.wordpress.org/reference/hooks/unregister_setting/) - Fires immediately before the setting is unregistered and after its filters have been removed.
- [`upgrader_overwrote_package`](https://developer.wordpress.org/reference/hooks/upgrader_overwrote_package/) - Fires when the upgrader has successfully overwritten a currently installed plugin or theme with an uploaded zip package.
- [`wp_check_comment_disallowed_list`](https://developer.wordpress.org/reference/hooks/wp_check_comment_disallowed_list/) - Fires before the comment is tested for disallowed characters or words.
- [`wp_media_attach_action`](https://developer.wordpress.org/reference/hooks/wp_media_attach_action/) - Fires when media is attached or detached from a post.
- [`wp_sitemaps_init`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_init/) - Fires when initializing the Sitemaps object.

### New Filters

- [`admin_viewport_meta`](https://developer.wordpress.org/reference/hooks/admin_viewport_meta/) - Filters the viewport meta in the admin.
- [`allowed_options`](https://developer.wordpress.org/reference/hooks/allowed_options/) - Filters the allowed options list.
- [`auto_plugin_theme_update_email`](https://developer.wordpress.org/reference/hooks/auto_plugin_theme_update_email/) - Filters the email sent following an automatic background update for plugins and themes.
- [`auto_plugin_update_send_email`](https://developer.wordpress.org/reference/hooks/auto_plugin_update_send_email/) - Filters whether to send an email following an automatic background plugin update.
- [`auto_theme_update_send_email`](https://developer.wordpress.org/reference/hooks/auto_theme_update_send_email/) - Filters whether to send an email following an automatic background theme update.
- [`default_category_post_types`](https://developer.wordpress.org/reference/hooks/default_category_post_types/) - Filters post types (in addition to 'post') that require a default category.
- [`default_{$meta_type}_metadata`](https://developer.wordpress.org/reference/hooks/default_meta_type_metadata/) - Filters the default metadata value for a specified meta key and object.
- [`do_redirect_guess_404_permalink`](https://developer.wordpress.org/reference/hooks/do_redirect_guess_404_permalink/) - Filters whether to attempt to guess a redirect URL for a 404 request.
- [`esc_xml`](https://developer.wordpress.org/reference/hooks/esc_xml/) - Filters a string cleaned and escaped for output in XML.
- [`get_custom_logo_image_attributes`](https://developer.wordpress.org/reference/hooks/get_custom_logo_image_attributes/) - Filters the list of custom logo image attributes.
- [`get_page_of_comment_query_args`](https://developer.wordpress.org/reference/hooks/get_page_of_comment_query_args/) - Filters the arguments used to query comments in get_page_of_comment().
- [`get_the_archive_title_prefix`](https://developer.wordpress.org/reference/hooks/get_the_archive_title_prefix/) - Filters the archive title prefix.
- [`gettext_with_context_{$domain}`](https://developer.wordpress.org/reference/hooks/gettext_with_context_domain/) - Filters text with its translation based on context information for a domain.
- [`gettext_{$domain}`](https://developer.wordpress.org/reference/hooks/gettext_domain/) - Filters text with its translation for a domain.
- [`install_plugin_overwrite_actions`](https://developer.wordpress.org/reference/hooks/install_plugin_overwrite_actions/) - Filters the list of action links available following a single plugin installation failure when overwriting is allowed.
- [`install_plugin_overwrite_comparison`](https://developer.wordpress.org/reference/hooks/install_plugin_overwrite_comparison/) - Filters the compare table output for overwriting a plugin package on upload.
- [`install_theme_overwrite_actions`](https://developer.wordpress.org/reference/hooks/install_theme_overwrite_actions/) - Filters the list of action links available following a single theme installation failure when overwriting is allowed.
- [`install_theme_overwrite_comparison`](https://developer.wordpress.org/reference/hooks/install_theme_overwrite_comparison/) - Filters the compare table output for overwriting a theme package on upload.
- [`lostpassword_errors`](https://developer.wordpress.org/reference/hooks/lostpassword_errors/) - Filters the errors encountered on a password reset request.
- [`navigation_widgets_format`](https://developer.wordpress.org/reference/hooks/navigation_widgets_format/) - Filters the HTML format of widgets with navigation links.
- [`ngettext_with_context_{$domain}`](https://developer.wordpress.org/reference/hooks/ngettext_with_context_domain/) - Filters the singular or plural form of a string with gettext context for a domain.
- [`ngettext_{$domain}`](https://developer.wordpress.org/reference/hooks/ngettext_domain/) - Filters the singular or plural form of a string for a domain.
- [`plugin_auto_update_debug_string`](https://developer.wordpress.org/reference/hooks/plugin_auto_update_debug_string/) - Filters the text string of the auto-updates setting for each plugin in the Site Health debug data.
- [`plugin_auto_update_setting_html`](https://developer.wordpress.org/reference/hooks/plugin_auto_update_setting_html/) - Filters the HTML of the auto-updates setting for each plugin in the Plugins list table.
- [`plugins_auto_update_enabled`](https://developer.wordpress.org/reference/hooks/plugins_auto_update_enabled/) - Filters whether plugins auto-update is enabled.
- [`pre_delete_attachment`](https://developer.wordpress.org/reference/hooks/pre_delete_attachment/) - Filters whether an attachment deletion should take place.
- [`pre_redirect_guess_404_permalink`](https://developer.wordpress.org/reference/hooks/pre_redirect_guess_404_permalink/) - Short-circuits the redirect URL guessing for 404 requests.
- [`pre_wp_unique_filename_file_list`](https://developer.wordpress.org/reference/hooks/pre_wp_unique_filename_file_list/) - Filters the file list used for calculating a unique filename for a newly added file.
- [`register_block_type_args`](https://developer.wordpress.org/reference/hooks/register_block_type_args/) - Filters the arguments for registering a block type.
- [`render_block_context`](https://developer.wordpress.org/reference/hooks/render_block_context/) - Filters the default context provided to a rendered block.
- [`rest_allowed_cors_headers`](https://developer.wordpress.org/reference/hooks/rest_allowed_cors_headers/) - Filters the list of request headers that are allowed for REST API CORS requests.
- [`rest_block_directory_collection_params`](https://developer.wordpress.org/reference/hooks/rest_block_directory_collection_params/) - Filters REST API collection parameters for the block directory controller.
- [`rest_exposed_cors_headers`](https://developer.wordpress.org/reference/hooks/rest_exposed_cors_headers/) - Filters the list of response headers that are exposed to REST API CORS requests.
- [`rest_prepare_block_type`](https://developer.wordpress.org/reference/hooks/rest_prepare_block_type/) - Filters a block type returned from the REST API.
- [`rest_prepare_plugin`](https://developer.wordpress.org/reference/hooks/rest_prepare_plugin/) - Filters plugin data for a REST API response.
- [`rest_queried_resource_route`](https://developer.wordpress.org/reference/hooks/rest_queried_resource_route/) - Filters the REST route for the currently queried object.
- [`rest_route_for_post`](https://developer.wordpress.org/reference/hooks/rest_route_for_post/) - Filters the REST API route for a post.
- [`rest_route_for_term`](https://developer.wordpress.org/reference/hooks/rest_route_for_term/) - Filters the REST API route for a term.
- [`safecss_filter_attr_allow_css`](https://developer.wordpress.org/reference/hooks/safecss_filter_attr_allow_css/) - Filters the check for unsafe CSS in `safecss_filter_attr`.
- [`strict_redirect_guess_404_permalink`](https://developer.wordpress.org/reference/hooks/strict_redirect_guess_404_permalink/) - Filters whether to perform a strict guess for a 404 redirect.
- [`theme_auto_update_debug_string`](https://developer.wordpress.org/reference/hooks/theme_auto_update_debug_string/) - Filters the text string of the auto-updates setting for each theme in the Site Health debug data.
- [`theme_auto_update_setting_html`](https://developer.wordpress.org/reference/hooks/theme_auto_update_setting_html/) - Filters the HTML of the auto-updates setting for each theme in the Themes list table.
- [`theme_auto_update_setting_template`](https://developer.wordpress.org/reference/hooks/theme_auto_update_setting_template/) - Filters the JavaScript template used to display the auto-update setting for a theme (in the overlay).
- [`themes_auto_update_enabled`](https://developer.wordpress.org/reference/hooks/themes_auto_update_enabled/) - Filters whether themes auto-update is enabled.
- [`wp_edited_image_metadata`](https://developer.wordpress.org/reference/hooks/wp_edited_image_metadata/) - Filters the meta data for the new image created by editing an existing image.
- [`wp_image_file_matches_image_meta`](https://developer.wordpress.org/reference/hooks/wp_image_file_matches_image_meta/) - Filters whether an image path or URI matches image meta.
- [`wp_img_tag_add_loading_attr`](https://developer.wordpress.org/reference/hooks/wp_img_tag_add_loading_attr/) - Filters the `loading` attribute value to add to an image. Default `lazy`.
- [`wp_img_tag_add_srcset_and_sizes_attr`](https://developer.wordpress.org/reference/hooks/wp_img_tag_add_srcset_and_sizes_attr/) - Filters whether to add the `srcset` and `sizes` HTML attributes to the img tag. Default `true`.
- [`wp_img_tag_add_width_and_height_attr`](https://developer.wordpress.org/reference/hooks/wp_img_tag_add_width_and_height_attr/) - Filters whether to add the missing `width` and `height` HTML attributes to the img tag. Default `true`.
- [`wp_lazy_loading_enabled`](https://developer.wordpress.org/reference/hooks/wp_lazy_loading_enabled/) - Filters whether to add the `loading` attribute to the specified tag in the specified context.
- [`wp_opcache_invalidate_file`](https://developer.wordpress.org/reference/hooks/wp_opcache_invalidate_file/) - Filters whether to invalidate a file from the opcode cache.
- [`wp_sitemaps_add_provider`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_add_provider/) - Filters the sitemap provider before it is added.
- [`wp_sitemaps_enabled`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_enabled/) - Filters whether XML Sitemaps are enabled or not.
- [`wp_sitemaps_index_entry`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_index_entry/) - Filters the sitemap entry for the sitemap index.
- [`wp_sitemaps_max_urls`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_max_urls/) - Filters the maximum number of URLs displayed on a sitemap.
- [`wp_sitemaps_post_types`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_post_types/) - Filters the list of post object sub types available within the sitemap.
- [`wp_sitemaps_posts_entry`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_posts_entry/) - Filters the sitemap entry for an individual post.
- [`wp_sitemaps_posts_pre_max_num_pages`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_posts_pre_max_num_pages/) - Filters the max number of pages before it is generated.
- [`wp_sitemaps_posts_pre_url_list`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_posts_pre_url_list/) - Filters the posts URL list before it is generated.
- [`wp_sitemaps_posts_query_args`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_posts_query_args/) - Filters the query arguments for post type sitemap queries.
- [`wp_sitemaps_posts_show_on_front_entry`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_posts_show_on_front_entry/) - Filters the sitemap entry for the home page when the 'show_on_front' option equals 'posts'.
- [`wp_sitemaps_stylesheet_content`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_stylesheet_content/) - Filters the content of the sitemap stylesheet.
- [`wp_sitemaps_stylesheet_css`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_stylesheet_css/) - Filters the CSS only for the sitemap stylesheet.
- [`wp_sitemaps_stylesheet_index_content`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_stylesheet_index_content/) - Filters the content of the sitemap index stylesheet.
- [`wp_sitemaps_stylesheet_index_url`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_stylesheet_index_url/) - Filters the URL for the sitemap index stylesheet.
- [`wp_sitemaps_stylesheet_url`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_stylesheet_url/) - Filters the URL for the sitemap stylesheet.
- [`wp_sitemaps_taxonomies`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_taxonomies/) - Filters the list of taxonomy object subtypes available within the sitemap.
- [`wp_sitemaps_taxonomies_entry`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_taxonomies_entry/) - Filters the sitemap entry for an individual term.
- [`wp_sitemaps_taxonomies_pre_max_num_pages`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_taxonomies_pre_max_num_pages/) - Filters the max number of pages for a taxonomy sitemap before it is generated.
- [`wp_sitemaps_taxonomies_pre_url_list`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_taxonomies_pre_url_list/) - Filters the taxonomies URL list before it is generated.
- [`wp_sitemaps_taxonomies_query_args`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_taxonomies_query_args/) - Filters the taxonomy terms query arguments.
- [`wp_sitemaps_users_entry`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_users_entry/) - Filters the sitemap entry for an individual user.
- [`wp_sitemaps_users_pre_max_num_pages`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_users_pre_max_num_pages/) - Filters the max number of pages for a user sitemap before it is generated.
- [`wp_sitemaps_users_pre_url_list`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_users_pre_url_list/) - Filters the users URL list before it is generated.
- [`wp_sitemaps_users_query_args`](https://developer.wordpress.org/reference/hooks/wp_sitemaps_users_query_args/) - Filters the query arguments for authors with public posts.
- [`wp_update_comment_type_batch_size`](https://developer.wordpress.org/reference/hooks/wp_update_comment_type_batch_size/) - Filters the comment batch size for updating the comment type.

### Changes

- [`after_delete_post`](https://developer.wordpress.org/reference/hooks/after_delete_post/) - Added the <code>$post</code> parameter.
- [`after_plugin_row_{$plugin_file}`](https://developer.wordpress.org/reference/hooks/after_plugin_row_plugin_file/) - Added 'auto-update-enabled' and 'auto-update-disabled' to possible values for <code>$status</code>.
- [`after_plugin_row`](https://developer.wordpress.org/reference/hooks/after_plugin_row/) - Added 'auto-update-enabled' and 'auto-update-disabled' to possible values for <code>$status</code>.
- [`auto_plugin_update_send_email`](https://developer.wordpress.org/reference/hooks/auto_plugin_update_send_email/) (5.5.1) - Added the <code>$update_results</code> parameter.
- [`auto_theme_update_send_email`](https://developer.wordpress.org/reference/hooks/auto_theme_update_send_email/) (5.5.1) - Added the <code>$update_results</code> parameter.
- [`auto_update_{$type}`](https://developer.wordpress.org/reference/hooks/auto_update_type/) - The <code>$update</code> parameter accepts the value of null.
- [`before_delete_post`](https://developer.wordpress.org/reference/hooks/before_delete_post/) - Added the <code>$post</code> parameter.
- [`check_comment_flood`](https://developer.wordpress.org/reference/hooks/check_comment_flood/) - The <code>$avoid_die</code> parameter was renamed to <code>$wp_error</code>.
- [`delete_attachment`](https://developer.wordpress.org/reference/hooks/delete_attachment/) - Added the <code>$post</code> parameter.
- [`delete_post`](https://developer.wordpress.org/reference/hooks/delete_post/) - Added the <code>$post</code> parameter.
- [`delete_user`](https://developer.wordpress.org/reference/hooks/delete_user/) - Added the <code>$user</code> parameter.
- [`deleted_post`](https://developer.wordpress.org/reference/hooks/deleted_post/) - Added the <code>$post</code> parameter.
- [`deleted_user`](https://developer.wordpress.org/reference/hooks/deleted_user/) - Added the <code>$user</code> parameter.
- [`disable_formats_dropdown`](https://developer.wordpress.org/reference/hooks/disable_formats_dropdown/) - The <code>$post_type</code> parameter was added.
- [`display_post_states`](https://developer.wordpress.org/reference/hooks/display_post_states/) - Also applied in the Customizer context. If any admin functions are used within the filter, their existence should be checked with <code>function_exists()</code> before being used.
- [`get_{$meta_type}_metadata`](https://developer.wordpress.org/reference/hooks/get_meta_type_metadata/) - Added the <code>$meta_type</code> parameter.
- [`get_footer`](https://developer.wordpress.org/reference/hooks/get_footer/) - The <code>$args</code> parameter was added.
- [`get_header`](https://developer.wordpress.org/reference/hooks/get_header/) - The <code>$args</code> parameter was added.
- [`get_lastpostdate`](https://developer.wordpress.org/reference/hooks/get_lastpostdate/) - Added the <code>$post_type</code> parameter.
- [`get_lastpostmodified`](https://developer.wordpress.org/reference/hooks/get_lastpostmodified/) - Added the <code>$post_type</code> parameter.
- [`get_search_form`](https://developer.wordpress.org/reference/hooks/get_search_form/) - The <code>$args</code> parameter was added.
- [`get_sidebar`](https://developer.wordpress.org/reference/hooks/get_sidebar/) - The <code>$args</code> parameter was added.
- [`get_template_part_{$slug}`](https://developer.wordpress.org/reference/hooks/get_template_part_slug/) - The <code>$args</code> parameter was added.
- [`get_template_part`](https://developer.wordpress.org/reference/hooks/get_template_part/) - The <code>$args</code> parameter was added.
- [`get_the_archive_title`](https://developer.wordpress.org/reference/hooks/get_the_archive_title/) - Added the <code>$prefix</code> and <code>$original_title</code> parameters.
- [`post_date_column_time`](https://developer.wordpress.org/reference/hooks/post_date_column_time/) - Removed the difference between 'excerpt' and 'list' modes. The published time and date are both displayed now, which is equivalent to the previous 'excerpt' mode.
- [`pre_get_search_form`](https://developer.wordpress.org/reference/hooks/pre_get_search_form/) - The <code>$args</code> parameter was added.
- [`search_form_format`](https://developer.wordpress.org/reference/hooks/search_form_format/) - The <code>$args</code> parameter was added.
- [`upgrader_pre_download`](https://developer.wordpress.org/reference/hooks/upgrader_pre_download/) - Added the <code>$hook_extra</code> parameter.
- [`wp_is_comment_flood`](https://developer.wordpress.org/reference/hooks/wp_is_comment_flood/) - The <code>$avoid_die</code> parameter was renamed to <code>$wp_error</code>.
- [`wp_logout`](https://developer.wordpress.org/reference/hooks/wp_logout/) - Added the <code>$user_id</code> parameter.
- [`wp_privacy_exports_dir`](https://developer.wordpress.org/reference/hooks/wp_privacy_exports_dir/) - Exports now use relative paths, so changes to the directory via this filter should be reflected on the server.
- [`wp_privacy_exports_url`](https://developer.wordpress.org/reference/hooks/wp_privacy_exports_url/) - Exports now use relative paths, so changes to the directory URL via this filter should be reflected on the server.
- [`wp_update_comment_data`](https://developer.wordpress.org/reference/hooks/wp_update_comment_data/) - Returning a WP_Error value from the filter will short-circuit comment update and allow skipping further processing.
- [`wpmu_delete_user`](https://developer.wordpress.org/reference/hooks/wpmu_delete_user/) - Added the <code>$user</code> parameter.

## WordPress 5.4

### New Actions

- [`do_favicon`](https://developer.wordpress.org/reference/hooks/do_favicon/) - Fired when the template loader determines a favicon.ico request.
- [`do_faviconico`](https://developer.wordpress.org/reference/hooks/do_faviconico/) - Fires when serving the favicon.ico file.
- [`wp_nav_menu_item_custom_fields`](https://developer.wordpress.org/reference/hooks/wp_nav_menu_item_custom_fields/) - Fires just before the move buttons of a nav menu item in the menu editor.
- [`wp_nav_menu_item_custom_fields_customize_template`](https://developer.wordpress.org/reference/hooks/wp_nav_menu_item_custom_fields_customize_template/) - Fires at the end of the form field template for nav menu items in the customizer.

### New Filters

- [`add_trashed_suffix_to_trashed_posts`](https://developer.wordpress.org/reference/hooks/add_trashed_suffix_to_trashed_posts/) - Filters whether or not to add a `__trashed` suffix to trashed posts that match the name of the updated post.
- [`rest_{$this->post_type}_item_schema`](https://developer.wordpress.org/reference/hooks/rest_this-post_type_item_schema/) - Filters the post's schema.
- [`set_screen_option_{$option}`](https://developer.wordpress.org/reference/hooks/set_screen_option_option/) (5.4.2) - Filters a screen option value before it is set.
- [`user_request_action_email_headers`](https://developer.wordpress.org/reference/hooks/user_request_action_email_headers/) - Filters the headers of the email sent when an account action is attempted.
- [`user_request_confirmed_email_headers`](https://developer.wordpress.org/reference/hooks/user_request_confirmed_email_headers/) - Filters the headers of the user request confirmation email.
- [`wp_privacy_additional_user_profile_data`](https://developer.wordpress.org/reference/hooks/wp_privacy_additional_user_profile_data/) - Filters the user's profile data for the privacy exporter.
- [`wp_privacy_personal_data_email_headers`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_email_headers/) - Filters the headers of the email sent with a personal data export file.

### Changes

- [`category_link`](https://developer.wordpress.org/reference/hooks/category_link/) (5.4.1) - Restored (un-deprecated).
- [`lostpassword_post`](https://developer.wordpress.org/reference/hooks/lostpassword_post/) - Added the <code>$user_data</code> parameter.
- [`newblog_notify_siteadmin`](https://developer.wordpress.org/reference/hooks/newblog_notify_siteadmin/) - The <code>$blog_id</code> parameter was added.
- [`post_locked_dialog`](https://developer.wordpress.org/reference/hooks/post_locked_dialog/) - The $user parameter was added.
- [`remove_user_from_blog`](https://developer.wordpress.org/reference/hooks/remove_user_from_blog/) - Added the <code>$reassign</code> parameter.
- [`set-screen-option`](https://developer.wordpress.org/reference/hooks/set-screen-option/) (5.4.2) - Only applied to options ending with '_page', or the 'layout_columns' option.
- [`switch_blog`](https://developer.wordpress.org/reference/hooks/switch_blog/) - The <code>$context</code> parameter was added.
- [`tag_link`](https://developer.wordpress.org/reference/hooks/tag_link/) (5.4.1) - Restored (un-deprecated).
- [`tag_row_actions`](https://developer.wordpress.org/reference/hooks/tag_row_actions/) (5.4.2) - Restored (un-deprecated).
- [`wp_insert_attachment_data`](https://developer.wordpress.org/reference/hooks/wp_insert_attachment_data/) (5.4.1) - The <code>$unsanitized_postarr</code> parameter was added.
- [`wp_insert_post_data`](https://developer.wordpress.org/reference/hooks/wp_insert_post_data/) (5.4.1) - The <code>$unsanitized_postarr</code> parameter was added.
- [`wp_login_failed`](https://developer.wordpress.org/reference/hooks/wp_login_failed/) - The <code>$error</code> parameter was added.
- [`wp_privacy_personal_data_export_file_created`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_export_file_created/) - Added the <code>$json_report_pathname</code> parameter.

## WordPress 5.3

### New Actions

- [`admin_email_confirm`](https://developer.wordpress.org/reference/hooks/admin_email_confirm/) - Fires before the admin email confirm form.
- [`admin_email_confirm_form`](https://developer.wordpress.org/reference/hooks/admin_email_confirm_form/) - Fires inside the admin-email-confirm-form form tags, before the hidden fields.
- [`manage_sites_extra_tablenav`](https://developer.wordpress.org/reference/hooks/manage_sites_extra_tablenav/) - Fires immediately following the closing "actions" div in the tablenav for the MS sites list table.
- [`restrict_manage_sites`](https://developer.wordpress.org/reference/hooks/restrict_manage_sites/) - Fires before the Filter button on the MS sites list table.

### New Filters

- [`admin_email_check_interval`](https://developer.wordpress.org/reference/hooks/admin_email_check_interval/) - Filters the interval for redirecting the user to the admin email confirmation screen.
- [`admin_email_remind_interval`](https://developer.wordpress.org/reference/hooks/admin_email_remind_interval/) (5.3.1) - Filters the interval for dismissing the admin email confirmation screen.
- [`big_image_size_threshold`](https://developer.wordpress.org/reference/hooks/big_image_size_threshold/) - Filters the "BIG image" threshold value.
- [`comments_pre_query`](https://developer.wordpress.org/reference/hooks/comments_pre_query/) - Filters the comments data before the query takes place.
- [`display_site_states`](https://developer.wordpress.org/reference/hooks/display_site_states/) - Filters the default site display states for items in the Sites list table.
- [`insert_with_markers_inline_instructions`](https://developer.wordpress.org/reference/hooks/insert_with_markers_inline_instructions/) - Filters the inline instructions inserted before the dynamically generated content.
- [`is_sticky`](https://developer.wordpress.org/reference/hooks/is_sticky/) - Filters whether a post is sticky.
- [`log_query_custom_data`](https://developer.wordpress.org/reference/hooks/log_query_custom_data/) - Filters the custom data to log alongside a query.
- [`make_clickable_rel`](https://developer.wordpress.org/reference/hooks/make_clickable_rel/) - Filters the rel value that is added to URL matches converted to links.
- [`recovery_email_debug_info`](https://developer.wordpress.org/reference/hooks/recovery_email_debug_info/) - Filters the debug information included in the fatal error protection email.
- [`register_sidebar_defaults`](https://developer.wordpress.org/reference/hooks/register_sidebar_defaults/) - Filters the sidebar default arguments.
- [`site_status_test_result`](https://developer.wordpress.org/reference/hooks/site_status_test_result/) - Filters the output of a finished Site Health test.
- [`terms_pre_query`](https://developer.wordpress.org/reference/hooks/terms_pre_query/) - Filters the terms array before the query takes place.
- [`wp_date`](https://developer.wordpress.org/reference/hooks/wp_date/) - Filters the date formatted based on the locale.
- [`wp_get_missing_image_subsizes`](https://developer.wordpress.org/reference/hooks/wp_get_missing_image_subsizes/) - Filters the array of missing image sub-sizes for an uploaded image.
- [`wp_get_original_image_path`](https://developer.wordpress.org/reference/hooks/wp_get_original_image_path/) - Filters the path to the original image.
- [`wp_get_original_image_url`](https://developer.wordpress.org/reference/hooks/wp_get_original_image_url/) - Filters the URL to the original attachment image.
- [`wp_image_maybe_exif_rotate`](https://developer.wordpress.org/reference/hooks/wp_image_maybe_exif_rotate/) - Filters the `$orientation` value to correct it before rotating or to prevent rotating the image.
- [`wp_image_resize_identical_dimensions`](https://developer.wordpress.org/reference/hooks/wp_image_resize_identical_dimensions/) - Filters whether to proceed with making an image sub-size with identical dimensions with the original/source image. Differences of 1px may be due to rounding and are ignored.
- [`wp_privacy_personal_data_email_subject`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_email_subject/) - Filters the subject of the email sent when an export request is completed.
- [`wp_privacy_personal_data_email_to`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_email_to/) - Filters the recipient of the personal data export email notification.

### Changes

- [`intermediate_image_sizes_advanced`](https://developer.wordpress.org/reference/hooks/intermediate_image_sizes_advanced/) - Added the <code>$attachment_id</code> argument.
- [`mce_external_languages`](https://developer.wordpress.org/reference/hooks/mce_external_languages/) - The <code>$editor_id</code> parameter was added.
- [`mce_external_plugins`](https://developer.wordpress.org/reference/hooks/mce_external_plugins/) - The <code>$editor_id</code> parameter was added.
- [`random_password`](https://developer.wordpress.org/reference/hooks/random_password/) - Added the <code>$length</code>, <code>$special_chars</code>, and <code>$extra_special_chars</code> parameters.
- [`site_status_test_php_modules`](https://developer.wordpress.org/reference/hooks/site_status_test_php_modules/) - The <code>$constant</code> and <code>$class</code> parameters were added.
- [`tiny_mce_plugins`](https://developer.wordpress.org/reference/hooks/tiny_mce_plugins/) - The <code>$editor_id</code> parameter was added.
- [`wp_generate_attachment_metadata`](https://developer.wordpress.org/reference/hooks/wp_generate_attachment_metadata/) - The <code>$context</code> parameter was added.
- [`wp_privacy_personal_data_email_content`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_email_content/) - Introduced the <code>$email_data</code> array.

## WordPress 5.2

### New Actions

- [`generate_recovery_mode_key`](https://developer.wordpress.org/reference/hooks/generate_recovery_mode_key/) - Fires when a recovery mode key is generated.
- [`get_template_part`](https://developer.wordpress.org/reference/hooks/get_template_part/) - Fires before an attempt is made to locate and load a template part.
- [`wp_body_open`](https://developer.wordpress.org/reference/hooks/wp_body_open/) - Triggered after the opening body tag.

### New Filters

- [`category_list_link_attributes`](https://developer.wordpress.org/reference/hooks/category_list_link_attributes/) - Filters the HTML attributes applied to a category list item's anchor element.
- [`comment_duplicate_message`](https://developer.wordpress.org/reference/hooks/comment_duplicate_message/) - Filters duplicate comment error message.
- [`comment_flood_message`](https://developer.wordpress.org/reference/hooks/comment_flood_message/) - Filters the comment flood error message.
- [`debug_information`](https://developer.wordpress.org/reference/hooks/debug_information/) - Filters the debug information shown on the Tools -> Site Health -> Info screen.
- [`disable_formats_dropdown`](https://developer.wordpress.org/reference/hooks/disable_formats_dropdown/) - Filters whether to remove the 'Formats' drop-down from the post list table.
- [`get_feed_build_date`](https://developer.wordpress.org/reference/hooks/get_feed_build_date/) - Filters the date the last post or comment in the query was modified.
- [`is_protected_endpoint`](https://developer.wordpress.org/reference/hooks/is_protected_endpoint/) - Filters whether the current request is against a protected endpoint.
- [`login_headertext`](https://developer.wordpress.org/reference/hooks/login_headertext/) - Filters the link text of the header logo above the login form.
- [`ms_user_list_site_class`](https://developer.wordpress.org/reference/hooks/ms_user_list_site_class/) - Filters the span class for a site listing on the multisite user list table.
- [`networks_pre_query`](https://developer.wordpress.org/reference/hooks/networks_pre_query/) - Filters the network data before the query takes place.
- [`oembed_iframe_title_attribute`](https://developer.wordpress.org/reference/hooks/oembed_iframe_title_attribute/) - Filters the title attribute of the given oEmbed HTML iframe.
- [`populate_site_meta`](https://developer.wordpress.org/reference/hooks/populate_site_meta/) - Filters meta for a site on creation.
- [`post_column_taxonomy_links`](https://developer.wordpress.org/reference/hooks/post_column_taxonomy_links/) - Filters the links in `$taxonomy` column of edit.php.
- [`recovery_email_support_info`](https://developer.wordpress.org/reference/hooks/recovery_email_support_info/) - Filters the support message sent with the the fatal error protection email.
- [`recovery_mode_begin_url`](https://developer.wordpress.org/reference/hooks/recovery_mode_begin_url/) - Filters the URL to begin recovery mode.
- [`recovery_mode_cookie_length`](https://developer.wordpress.org/reference/hooks/recovery_mode_cookie_length/) - Filters the length of time a Recovery Mode cookie is valid for.
- [`recovery_mode_email`](https://developer.wordpress.org/reference/hooks/recovery_mode_email/) - Filters the contents of the Recovery Mode email.
- [`recovery_mode_email_link_ttl`](https://developer.wordpress.org/reference/hooks/recovery_mode_email_link_ttl/) - Filters the amount of time the recovery mode email link is valid for.
- [`recovery_mode_email_rate_limit`](https://developer.wordpress.org/reference/hooks/recovery_mode_email_rate_limit/) - Filters the rate limit between sending new recovery mode email links.
- [`search_form_args`](https://developer.wordpress.org/reference/hooks/search_form_args/) - Filters the array of arguments used when generating the search form.
- [`site_status_test_php_modules`](https://developer.wordpress.org/reference/hooks/site_status_test_php_modules/) - Filters the array representing all the modules we wish to test for.
- [`site_status_tests`](https://developer.wordpress.org/reference/hooks/site_status_tests/) - Filters which site status tests are run on a site.
- [`sites_pre_query`](https://developer.wordpress.org/reference/hooks/sites_pre_query/) - Filters the site data before the get_sites query takes place.
- [`users_have_additional_content`](https://developer.wordpress.org/reference/hooks/users_have_additional_content/) - Filters whether the users being deleted have additional content associated with them outside of the `post_author` and `link_owner` relationships.
- [`wp_die_jsonp_handler`](https://developer.wordpress.org/reference/hooks/wp_die_jsonp_handler/) - Filters the callback for killing WordPress execution for JSONP REST requests.
- [`wp_die_xml_handler`](https://developer.wordpress.org/reference/hooks/wp_die_xml_handler/) - Filters the callback for killing WordPress execution for XML requests.
- [`wp_fatal_error_handler_enabled`](https://developer.wordpress.org/reference/hooks/wp_fatal_error_handler_enabled/) - Filters whether the fatal error handler is enabled.
- [`wp_php_error_args`](https://developer.wordpress.org/reference/hooks/wp_php_error_args/) - Filters the arguments passed to {@see wp_die()} for the default PHP error template.
- [`wp_php_error_message`](https://developer.wordpress.org/reference/hooks/wp_php_error_message/) - Filters the message that the default PHP error template displays.
- [`wp_protected_ajax_actions`](https://developer.wordpress.org/reference/hooks/wp_protected_ajax_actions/) - Filters the array of protected Ajax actions.
- [`wp_should_handle_php_error`](https://developer.wordpress.org/reference/hooks/wp_should_handle_php_error/) - Filters whether a given thrown error should be handled by the fatal error handler.
- [`wp_signature_hosts`](https://developer.wordpress.org/reference/hooks/wp_signature_hosts/) - Filters the list of hosts which should have Signature Verification attempted on.
- [`wp_signature_softfail`](https://developer.wordpress.org/reference/hooks/wp_signature_softfail/) - Filters whether Signature Verification failures should be allowed to soft fail.
- [`wp_signature_url`](https://developer.wordpress.org/reference/hooks/wp_signature_url/) - Filters the URL where the signature for a file is located.
- [`wp_trusted_keys`](https://developer.wordpress.org/reference/hooks/wp_trusted_keys/) - Filters the valid signing keys used to verify the contents of files.

### Changes

- [`get_archives_link`](https://developer.wordpress.org/reference/hooks/get_archives_link/) - Added the <code>$selected</code> parameter.
- [`get_pagenum_link`](https://developer.wordpress.org/reference/hooks/get_pagenum_link/) - Added the <code>$pagenum</code> argument.

## WordPress 5.1

### New Actions

- [`edit_post_{$post->post_type}`](https://developer.wordpress.org/reference/hooks/edit_post_post-post_type/) - Fires once an existing post has been updated.
- [`mu_plugin_loaded`](https://developer.wordpress.org/reference/hooks/mu_plugin_loaded/) - Fires once a single must-use plugin has loaded.
- [`network_plugin_loaded`](https://developer.wordpress.org/reference/hooks/network_plugin_loaded/) - Fires once a single network-activated plugin has loaded.
- [`plugin_loaded`](https://developer.wordpress.org/reference/hooks/plugin_loaded/) - Fires once a single activated plugin has loaded.
- [`registered_taxonomy_for_object_type`](https://developer.wordpress.org/reference/hooks/registered_taxonomy_for_object_type/) - Fires after a taxonomy is registered for an object type.
- [`unregistered_taxonomy_for_object_type`](https://developer.wordpress.org/reference/hooks/unregistered_taxonomy_for_object_type/) - Fires after a taxonomy is unregistered for an object type.
- [`wp_delete_site`](https://developer.wordpress.org/reference/hooks/wp_delete_site/) - Fires once a site has been deleted from the database.
- [`wp_initialize_site`](https://developer.wordpress.org/reference/hooks/wp_initialize_site/) - Fires when a site's initialization routine should be executed.
- [`wp_insert_site`](https://developer.wordpress.org/reference/hooks/wp_insert_site/) - Fires once a site has been inserted into the database.
- [`wp_uninitialize_site`](https://developer.wordpress.org/reference/hooks/wp_uninitialize_site/) - Fires when a site's uninitialization routine should be executed.
- [`wp_update_site`](https://developer.wordpress.org/reference/hooks/wp_update_site/) - Fires once a site has been updated in the database.
- [`wp_validate_site_data`](https://developer.wordpress.org/reference/hooks/wp_validate_site_data/) - Fires when data should be validated for a site prior to inserting or updating in the database.
- [`wp_validate_site_deletion`](https://developer.wordpress.org/reference/hooks/wp_validate_site_deletion/) - Fires before a site should be deleted from the database.

### New Filters

- [`allow_empty_comment`](https://developer.wordpress.org/reference/hooks/allow_empty_comment/) - Filters whether an empty comment should be allowed.
- [`comments_list_table_query_args`](https://developer.wordpress.org/reference/hooks/comments_list_table_query_args/) - Filters the arguments for the comment query in the comments list table.
- [`download_url_error_max_body_size`](https://developer.wordpress.org/reference/hooks/download_url_error_max_body_size/) - Filters the maximum error response body size in `download_url()`.
- [`get_schedule`](https://developer.wordpress.org/reference/hooks/get_schedule/) - Filters the schedule name for a hook.
- [`has_post_thumbnail`](https://developer.wordpress.org/reference/hooks/has_post_thumbnail/) - Filters whether a post has a post thumbnail.
- [`pre_clear_scheduled_hook`](https://developer.wordpress.org/reference/hooks/pre_clear_scheduled_hook/) - Filter to override clearing a scheduled hook.
- [`pre_count_users`](https://developer.wordpress.org/reference/hooks/pre_count_users/) - Filters the user count before queries are run.
- [`pre_get_ready_cron_jobs`](https://developer.wordpress.org/reference/hooks/pre_get_ready_cron_jobs/) - Filter to override retrieving ready cron jobs.
- [`pre_get_scheduled_event`](https://developer.wordpress.org/reference/hooks/pre_get_scheduled_event/) - Filter to override retrieving a scheduled event.
- [`pre_render_block`](https://developer.wordpress.org/reference/hooks/pre_render_block/) - Allows render_block() to be short-circuited, by returning a non-null value.
- [`pre_reschedule_event`](https://developer.wordpress.org/reference/hooks/pre_reschedule_event/) - Filter to override rescheduling of a recurring event.
- [`pre_schedule_event`](https://developer.wordpress.org/reference/hooks/pre_schedule_event/) - Filter to override scheduling an event.
- [`pre_unschedule_event`](https://developer.wordpress.org/reference/hooks/pre_unschedule_event/) - Filter to override unscheduling of events.
- [`pre_unschedule_hook`](https://developer.wordpress.org/reference/hooks/pre_unschedule_hook/) - Filter to override clearing all events attached to the hook.
- [`pre_wp_is_site_initialized`](https://developer.wordpress.org/reference/hooks/pre_wp_is_site_initialized/) - Filters the check for whether a site is initialized before the database is accessed.
- [`pre_wp_unique_post_slug`](https://developer.wordpress.org/reference/hooks/pre_wp_unique_post_slug/) - Filters the post slug before it is generated to be unique.
- [`render_block_data`](https://developer.wordpress.org/reference/hooks/render_block_data/) - Filters the block being rendered in render_block(), before it's processed.
- [`rest_post_search_query`](https://developer.wordpress.org/reference/hooks/rest_post_search_query/) - Filters the query arguments for a REST API post search request.
- [`users_pre_query`](https://developer.wordpress.org/reference/hooks/users_pre_query/) - Filters the users array before the query takes place.
- [`wp_die_json_handler`](https://developer.wordpress.org/reference/hooks/wp_die_json_handler/) - Filters the callback for killing WordPress execution for JSON requests.
- [`wp_direct_php_update_url`](https://developer.wordpress.org/reference/hooks/wp_direct_php_update_url/) (5.1.1) - Filters the URL for directly updating the PHP version the site is running on from the host.
- [`wp_initialize_site_args`](https://developer.wordpress.org/reference/hooks/wp_initialize_site_args/) - Filters the arguments for initializing a site.
- [`wp_insert_term_duplicate_term_check`](https://developer.wordpress.org/reference/hooks/wp_insert_term_duplicate_term_check/) - Filters the duplicate term check that takes place during term creation.
- [`wp_is_php_version_acceptable`](https://developer.wordpress.org/reference/hooks/wp_is_php_version_acceptable/) (5.1.1) - Filters whether the active PHP version is considered acceptable by WordPress.
- [`wp_normalize_site_data`](https://developer.wordpress.org/reference/hooks/wp_normalize_site_data/) - Filters passed site data in order to normalize it.
- [`wp_targeted_link_rel`](https://developer.wordpress.org/reference/hooks/wp_targeted_link_rel/) - Filters the rel values that are added to links with `target` attribute.
- [`wp_update_php_url`](https://developer.wordpress.org/reference/hooks/wp_update_php_url/) - Filters the URL to learn more about updating the PHP version the site is running on.
- [`wp_using_themes`](https://developer.wordpress.org/reference/hooks/wp_using_themes/) - Filters whether the current request should use themes.
- [`x_redirect_by`](https://developer.wordpress.org/reference/hooks/x_redirect_by/) - Filters the X-Redirect-By header.

### Changes

- [`comment_status_links`](https://developer.wordpress.org/reference/hooks/comment_status_links/) - The 'Mine' link was added.
- [`doing_it_wrong_trigger_error`](https://developer.wordpress.org/reference/hooks/doing_it_wrong_trigger_error/) - Added the $function_name, $message and $version parameters.
- [`found_users_query`](https://developer.wordpress.org/reference/hooks/found_users_query/) - Added the <code>$this</code> parameter.
- [`http_headers_useragent`](https://developer.wordpress.org/reference/hooks/http_headers_useragent/) - The <code>$url</code> parameter was added.
- [`http_request_redirection_count`](https://developer.wordpress.org/reference/hooks/http_request_redirection_count/) - The <code>$url</code> parameter was added.
- [`http_request_reject_unsafe_urls`](https://developer.wordpress.org/reference/hooks/http_request_reject_unsafe_urls/) - The <code>$url</code> parameter was added.
- [`http_request_timeout`](https://developer.wordpress.org/reference/hooks/http_request_timeout/) - The <code>$url</code> parameter was added.
- [`http_request_version`](https://developer.wordpress.org/reference/hooks/http_request_version/) - The <code>$url</code> parameter was added.
- [`https_local_ssl_verify`](https://developer.wordpress.org/reference/hooks/https_local_ssl_verify/) - The <code>$url</code> parameter was added.
- [`https_ssl_verify`](https://developer.wordpress.org/reference/hooks/https_ssl_verify/) - The <code>$url</code> parameter was added.
- [`lost_password`](https://developer.wordpress.org/reference/hooks/lost_password/) - Added the <code>$errors</code> parameter.
- [`wp_check_filetype_and_ext`](https://developer.wordpress.org/reference/hooks/wp_check_filetype_and_ext/) - The $real_mime parameter was added.
- [`wp_get_attachment_link`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_link/) - Added the <code>$attr</code> parameter.

## WordPress 5.0

### New Actions

- [`block_editor_meta_box_hidden_fields`](https://developer.wordpress.org/reference/hooks/block_editor_meta_box_hidden_fields/) - Adds hidden input fields to the meta box save form.
- [`enqueue_block_assets`](https://developer.wordpress.org/reference/hooks/enqueue_block_assets/) - Fires after enqueuing block assets for both editor and front-end.
- [`enqueue_block_editor_assets`](https://developer.wordpress.org/reference/hooks/enqueue_block_editor_assets/) - Fires after block assets have been enqueued for the editing interface.
- [`rest_after_insert_attachment`](https://developer.wordpress.org/reference/hooks/rest_after_insert_attachment/) - Fires after a single attachment is completely created or updated via the REST API.
- [`rest_after_insert_comment`](https://developer.wordpress.org/reference/hooks/rest_after_insert_comment/) - Fires completely after a comment is created or updated via the REST API.
- [`rest_after_insert_user`](https://developer.wordpress.org/reference/hooks/rest_after_insert_user/) - Fires after a user is completely created or updated via the REST API.
- [`rest_after_insert_{$this->post_type}`](https://developer.wordpress.org/reference/hooks/rest_after_insert_this-post_type/) - Fires after a single post is completely created or updated via the REST API.
- [`rest_after_insert_{$this->taxonomy}`](https://developer.wordpress.org/reference/hooks/rest_after_insert_this-taxonomy/) - Fires after a single term is completely created or updated via the REST API.

### New Filters

- [`block_editor_no_javascript_message`](https://developer.wordpress.org/reference/hooks/block_editor_no_javascript_message/) (5.0.3) - Filters the message displayed in the block editor interface when JavaScript is not enabled in the browser.
- [`block_parser_class`](https://developer.wordpress.org/reference/hooks/block_parser_class/) - Filter to allow plugins to replace the server-side block parser.
- [`delete_{$meta_type}_metadata_by_mid`](https://developer.wordpress.org/reference/hooks/delete_meta_type_metadata_by_mid/) - Short-circuits deleting metadata of a specific type by meta ID.
- [`determine_locale`](https://developer.wordpress.org/reference/hooks/determine_locale/) - Filters the locale for the current request.
- [`excerpt_allowed_blocks`](https://developer.wordpress.org/reference/hooks/excerpt_allowed_blocks/) - Filters the list of blocks that can contribute to the excerpt.
- [`filter_block_editor_meta_boxes`](https://developer.wordpress.org/reference/hooks/filter_block_editor_meta_boxes/) - Fires right before the meta boxes are rendered.
- [`get_{$meta_type}_metadata_by_mid`](https://developer.wordpress.org/reference/hooks/get_meta_type_metadata_by_mid/) - Short-circuits the return value when fetching a meta field by meta ID.
- [`load_script_textdomain_relative_path`](https://developer.wordpress.org/reference/hooks/load_script_textdomain_relative_path/) (5.0.2) - Filters the relative path of scripts used for finding translation files.
- [`load_script_translation_file`](https://developer.wordpress.org/reference/hooks/load_script_translation_file/) (5.0.2) - Filters the file path for loading script translations for the given script handle and text domain.
- [`load_script_translations`](https://developer.wordpress.org/reference/hooks/load_script_translations/) (5.0.2) - Filters script translations for the given file, script handle and text domain.
- [`pre_determine_locale`](https://developer.wordpress.org/reference/hooks/pre_determine_locale/) - Filters the locale for the current request prior to the default determination process.
- [`pre_load_script_translations`](https://developer.wordpress.org/reference/hooks/pre_load_script_translations/) (5.0.2) - Pre-filters script translations for the given file, script handle and text domain.
- [`render_block`](https://developer.wordpress.org/reference/hooks/render_block/) - Filters the content of a single block.
- [`rest_prepare_autosave`](https://developer.wordpress.org/reference/hooks/rest_prepare_autosave/) - Filters a revision returned from the REST API.
- [`rest_prepare_theme`](https://developer.wordpress.org/reference/hooks/rest_prepare_theme/) - Filters theme data returned from the REST API.
- [`rest_themes_collection_params`](https://developer.wordpress.org/reference/hooks/rest_themes_collection_params/) - Filters REST API collection parameters for the themes controller.
- [`update_{$meta_type}_metadata_by_mid`](https://developer.wordpress.org/reference/hooks/update_meta_type_metadata_by_mid/) - Short-circuits updating metadata of a specific type by meta ID.
- [`update_{$meta_type}_metadata_cache`](https://developer.wordpress.org/reference/hooks/update_meta_type_metadata_cache/) - Short-circuits updating the metadata cache of a specific type.
- [`use_block_editor_for_post`](https://developer.wordpress.org/reference/hooks/use_block_editor_for_post/) - Filters whether a post is able to be edited in the block editor.
- [`use_block_editor_for_post_type`](https://developer.wordpress.org/reference/hooks/use_block_editor_for_post_type/) - Filters whether a post is able to be edited in the block editor.
- [`wp_kses_uri_attributes`](https://developer.wordpress.org/reference/hooks/wp_kses_uri_attributes/) (5.0.1) - Filters the list of attributes that are required to contain a URL.
- [`wp_rest_search_handlers`](https://developer.wordpress.org/reference/hooks/wp_rest_search_handlers/) - Filters the search handlers to use in the REST search controller.
- [`write_your_story`](https://developer.wordpress.org/reference/hooks/write_your_story/) - Filters the body placeholder text.

### Changes

- [`wp_read_image_metadata`](https://developer.wordpress.org/reference/hooks/wp_read_image_metadata/) - The <code>$exif</code> parameter was added.

## WordPress 4.9

### New Actions

- [`add_inline_data`](https://developer.wordpress.org/reference/hooks/add_inline_data/) (4.9.8) - Fires after outputting the fields for the inline editor for posts and pages.
- [`clean_taxonomy_cache`](https://developer.wordpress.org/reference/hooks/clean_taxonomy_cache/) - Fires after a taxonomy's caches have been cleaned.
- [`loop_no_results`](https://developer.wordpress.org/reference/hooks/loop_no_results/) - Fires if no results are found in a post query.
- [`manage_users_extra_tablenav`](https://developer.wordpress.org/reference/hooks/manage_users_extra_tablenav/) - Fires immediately following the closing "actions" div in the tablenav for the users list table.
- [`page_attributes_misc_attributes`](https://developer.wordpress.org/reference/hooks/page_attributes_misc_attributes/) - Fires before the help hint text in the 'Page Attributes' meta box.
- [`user_request_action_confirmed`](https://developer.wordpress.org/reference/hooks/user_request_action_confirmed/) (4.9.6) - Fires an action hook when the account action has been confirmed by the user.
- [`wp_enqueue_code_editor`](https://developer.wordpress.org/reference/hooks/wp_enqueue_code_editor/) - Fires when scripts and styles are enqueued for the code editor.
- [`wp_privacy_personal_data_erased`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_erased/) (4.9.6) - Fires immediately after a personal data erasure request has been marked completed.
- [`wp_privacy_personal_data_export_file`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_export_file/) (4.9.6) - Generate the export file from the collected, grouped personal data.
- [`wp_privacy_personal_data_export_file_created`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_export_file_created/) (4.9.6) - Fires right after all personal data has been written to the export file.

### New Filters

- [`admin_referrer_policy`](https://developer.wordpress.org/reference/hooks/admin_referrer_policy/) - Filters the admin referrer policy header value.
- [`alloptions`](https://developer.wordpress.org/reference/hooks/alloptions/) - Filters all options after retrieving them.
- [`auth_{$object_type}_meta_{$meta_key}_for_{$object_subtype}`](https://developer.wordpress.org/reference/hooks/auth_object_type_meta_meta_key_for_object_subtype/) (4.9.8) - Filters whether the user is allowed to edit a specific meta key of a specific object type and subtype.
- [`available_permalink_structure_tags`](https://developer.wordpress.org/reference/hooks/available_permalink_structure_tags/) - Filters the list of available permalink structure tags on the Permalinks settings page.
- [`can_add_user_to_blog`](https://developer.wordpress.org/reference/hooks/can_add_user_to_blog/) - Filters whether a user should be added to a site.
- [`core_version_check_query_args`](https://developer.wordpress.org/reference/hooks/core_version_check_query_args/) - Filters the query arguments sent as part of the core version check.
- [`customize_changeset_branching`](https://developer.wordpress.org/reference/hooks/customize_changeset_branching/) - Filters whether or not changeset branching is allowed.
- [`customize_load_themes`](https://developer.wordpress.org/reference/hooks/customize_load_themes/) - Filters the theme data loaded in the customizer.
- [`embed_thumbnail_id`](https://developer.wordpress.org/reference/hooks/embed_thumbnail_id/) - Filters the thumbnail image ID for use in the embed template.
- [`get_object_subtype_{$object_type}`](https://developer.wordpress.org/reference/hooks/get_object_subtype_object_type/) (4.9.8) - Filters the object subtype identifier for a non-standard object type.
- [`get_the_post_type_description`](https://developer.wordpress.org/reference/hooks/get_the_post_type_description/) - Filters the description for a post type archive.
- [`login_link_separator`](https://developer.wordpress.org/reference/hooks/login_link_separator/) - Filters the separator used between login form navigation links.
- [`login_title`](https://developer.wordpress.org/reference/hooks/login_title/) - Filters the title tag content for login page.
- [`network_admin_email_change_email`](https://developer.wordpress.org/reference/hooks/network_admin_email_change_email/) - Filters the contents of the email notification sent when the network admin email address is changed.
- [`new_network_admin_email_content`](https://developer.wordpress.org/reference/hooks/new_network_admin_email_content/) - Filters the text of the email sent when a change of network admin email address is attempted.
- [`old_slug_redirect_post_id`](https://developer.wordpress.org/reference/hooks/old_slug_redirect_post_id/) (4.9.3) - Filters the old slug redirect post ID.
- [`plugin_files_exclusions`](https://developer.wordpress.org/reference/hooks/plugin_files_exclusions/) - Filters the array of excluded directories and files while scanning the folder.
- [`pre_cache_alloptions`](https://developer.wordpress.org/reference/hooks/pre_cache_alloptions/) - Filters all options before caching them.
- [`pre_get_main_site_id`](https://developer.wordpress.org/reference/hooks/pre_get_main_site_id/) - Filters the main site ID.
- [`pre_move_uploaded_file`](https://developer.wordpress.org/reference/hooks/pre_move_uploaded_file/) - Filters whether to short-circuit moving the uploaded file after passing all checks.
- [`pre_term_link`](https://developer.wordpress.org/reference/hooks/pre_term_link/) - Filters the permalink structure for a term before token replacement occurs.
- [`pre_trash_post`](https://developer.wordpress.org/reference/hooks/pre_trash_post/) - Filters whether a post trashing should take place.
- [`pre_untrash_post`](https://developer.wordpress.org/reference/hooks/pre_untrash_post/) - Filters whether a post untrashing should take place.
- [`privacy_policy_url`](https://developer.wordpress.org/reference/hooks/privacy_policy_url/) (4.9.6) - Filters the URL of the privacy policy page.
- [`replace_editor`](https://developer.wordpress.org/reference/hooks/replace_editor/) - Allows replacement of the editor.
- [`sanitize_{$object_type}_meta_{$meta_key}_for_{$object_subtype}`](https://developer.wordpress.org/reference/hooks/sanitize_object_type_meta_meta_key_for_object_subtype/) (4.9.8) - Filters the sanitization of a specific meta key of a specific meta type and subtype.
- [`self_admin_url`](https://developer.wordpress.org/reference/hooks/self_admin_url/) - Filters the admin URL for the current site or network depending on context.
- [`send_network_admin_email_change_email`](https://developer.wordpress.org/reference/hooks/send_network_admin_email_change_email/) - Filters whether to send the network admin email change notification email.
- [`send_site_admin_email_change_email`](https://developer.wordpress.org/reference/hooks/send_site_admin_email_change_email/) - Filters whether to send the site admin email change notification email.
- [`site_admin_email_change_email`](https://developer.wordpress.org/reference/hooks/site_admin_email_change_email/) - Filters the contents of the email notification sent when the site admin email address is changed.
- [`the_privacy_policy_link`](https://developer.wordpress.org/reference/hooks/the_privacy_policy_link/) (4.9.6) - Filters the privacy policy link.
- [`theme_templates`](https://developer.wordpress.org/reference/hooks/theme_templates/) (4.9.6) - Filters list of page templates for a theme.
- [`user_erasure_fulfillment_email_to`](https://developer.wordpress.org/reference/hooks/user_erasure_fulfillment_email_to/) (4.9.6) - Filters the recipient of the data erasure fulfillment notification.
- [`user_request_action_confirmed_message`](https://developer.wordpress.org/reference/hooks/user_request_action_confirmed_message/) (4.9.6) - Filters the message displayed to a user when they confirm a data request.
- [`user_request_action_description`](https://developer.wordpress.org/reference/hooks/user_request_action_description/) (4.9.6) - Filters the user action description.
- [`user_request_action_email_content`](https://developer.wordpress.org/reference/hooks/user_request_action_email_content/) (4.9.6) - Filters the text of the email sent when an account action is attempted.
- [`user_request_action_email_subject`](https://developer.wordpress.org/reference/hooks/user_request_action_email_subject/) (4.9.6) - Filters the subject of the email sent when an account action is attempted.
- [`user_request_confirmed_email_subject`](https://developer.wordpress.org/reference/hooks/user_request_confirmed_email_subject/) (4.9.8) - Filters the subject of the user request confirmation email.
- [`user_request_confirmed_email_to`](https://developer.wordpress.org/reference/hooks/user_request_confirmed_email_to/) (4.9.6) - Filters the recipient of the data request confirmation notification.
- [`user_request_key_expiration`](https://developer.wordpress.org/reference/hooks/user_request_key_expiration/) (4.9.6) - Filters the expiration time of confirm keys.
- [`username_exists`](https://developer.wordpress.org/reference/hooks/username_exists/) - Filters whether the given username exists.
- [`widget_{$this->id_base}_instance_schema`](https://developer.wordpress.org/reference/hooks/widget_this-id_base_instance_schema/) - Filters the media widget instance schema to add additional properties.
- [`wp_anonymize_comment`](https://developer.wordpress.org/reference/hooks/wp_anonymize_comment/) (4.9.6) - Filters whether to anonymize the comment.
- [`wp_code_editor_settings`](https://developer.wordpress.org/reference/hooks/wp_code_editor_settings/) - Filters settings that are passed into the code editor.
- [`wp_get_nav_menu_name`](https://developer.wordpress.org/reference/hooks/wp_get_nav_menu_name/) - Filters the navigation menu name being returned.
- [`wp_get_object_terms_args`](https://developer.wordpress.org/reference/hooks/wp_get_object_terms_args/) - Filters arguments for retrieving object terms.
- [`wp_is_mobile`](https://developer.wordpress.org/reference/hooks/wp_is_mobile/) - Filters whether the request should be treated as coming from a mobile device or not.
- [`wp_new_user_notification_email`](https://developer.wordpress.org/reference/hooks/wp_new_user_notification_email/) - Filters the contents of the new user notification email sent to the new user.
- [`wp_new_user_notification_email_admin`](https://developer.wordpress.org/reference/hooks/wp_new_user_notification_email_admin/) - Filters the contents of the new user notification email sent to the site admin.
- [`wp_password_change_notification_email`](https://developer.wordpress.org/reference/hooks/wp_password_change_notification_email/) - Filters the contents of the password change notification email sent to the site admin.
- [`wp_pre_insert_user_data`](https://developer.wordpress.org/reference/hooks/wp_pre_insert_user_data/) - Filters user data before the record is created or updated.
- [`wp_privacy_anonymize_data`](https://developer.wordpress.org/reference/hooks/wp_privacy_anonymize_data/) (4.9.6) - Filters the anonymous data for each type.
- [`wp_privacy_export_expiration`](https://developer.wordpress.org/reference/hooks/wp_privacy_export_expiration/) (4.9.6) - Filters the lifetime, in seconds, of a personal data export file.
- [`wp_privacy_exports_dir`](https://developer.wordpress.org/reference/hooks/wp_privacy_exports_dir/) (4.9.6) - Filters the directory used to store personal data export files.
- [`wp_privacy_exports_url`](https://developer.wordpress.org/reference/hooks/wp_privacy_exports_url/) (4.9.6) - Filters the URL of the directory used to store personal data export files.
- [`wp_privacy_personal_data_email_content`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_email_content/) (4.9.6) - Filters the text of the email sent with a personal data export file.
- [`wp_privacy_personal_data_erasers`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_erasers/) (4.9.6) - Filters the array of personal data eraser callbacks.
- [`wp_privacy_personal_data_erasure_page`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_erasure_page/) (4.9.6) - Filters a page of personal data eraser data.
- [`wp_privacy_personal_data_export_page`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_export_page/) (4.9.6) - Filters a page of personal data exporter data. Used to build the export report.
- [`wp_privacy_personal_data_exporters`](https://developer.wordpress.org/reference/hooks/wp_privacy_personal_data_exporters/) (4.9.6) - Filters the array of exporter callbacks.
- [`wp_read_video_metadata`](https://developer.wordpress.org/reference/hooks/wp_read_video_metadata/) - Filters the array of metadata retrieved from a video.

### Changes

- [`admin_referrer_policy`](https://developer.wordpress.org/reference/hooks/admin_referrer_policy/) (4.9.5) - The default value was changed to 'strict-origin-when-cross-origin'.
- [`attachment_submitbox_misc_actions`](https://developer.wordpress.org/reference/hooks/attachment_submitbox_misc_actions/) - Added the <code>$post</code> parameter.
- [`audio_submitbox_misc_sections`](https://developer.wordpress.org/reference/hooks/audio_submitbox_misc_sections/) - Added the <code>$post</code> parameter.
- [`delete_comment`](https://developer.wordpress.org/reference/hooks/delete_comment/) - Added the <code>$comment</code> parameter.
- [`deleted_comment`](https://developer.wordpress.org/reference/hooks/deleted_comment/) - Added the <code>$comment</code> parameter.
- [`editable_extensions`](https://developer.wordpress.org/reference/hooks/editable_extensions/) - Added the <code>$plugin</code> parameter.
- [`get_{$adjacent}_post_sort`](https://developer.wordpress.org/reference/hooks/get_adjacent_post_sort/) - Added the <code>$order</code> parameter.
- [`media_submitbox_misc_sections`](https://developer.wordpress.org/reference/hooks/media_submitbox_misc_sections/) - Added the <code>$post</code> parameter.
- [`nav_menu_items_{$post_type_name}_recent`](https://developer.wordpress.org/reference/hooks/nav_menu_items_post_type_name_recent/) - Added the <code>$recent_args</code> parameter.
- [`new_admin_email_content`](https://developer.wordpress.org/reference/hooks/new_admin_email_content/) - This filter is no longer Multisite specific.
- [`new_user_email_content`](https://developer.wordpress.org/reference/hooks/new_user_email_content/) - This filter is no longer Multisite specific.
- [`number_format_i18n`](https://developer.wordpress.org/reference/hooks/number_format_i18n/) - The <code>$number</code> and <code>$decimals</code> parameters were added.
- [`oembed_fetch_url`](https://developer.wordpress.org/reference/hooks/oembed_fetch_url/) - The <code>dnt</code> (Do Not Track) query parameter was added to all oEmbed provider URLs.
- [`plugin_action_links_{$plugin_file}`](https://developer.wordpress.org/reference/hooks/plugin_action_links_plugin_file/) - The 'Edit' link was removed from the list of action links.
- [`plugin_action_links`](https://developer.wordpress.org/reference/hooks/plugin_action_links/) - The 'Edit' link was removed from the list of action links.
- [`post_submitbox_start`](https://developer.wordpress.org/reference/hooks/post_submitbox_start/) - Added the <code>$post</code> parameter.
- [`post_thumbnail_size`](https://developer.wordpress.org/reference/hooks/post_thumbnail_size/) - Added the <code>$post_id</code> parameter.
- [`pre_comment_approved`](https://developer.wordpress.org/reference/hooks/pre_comment_approved/) - Returning a WP_Error value from the filter will short-circuit comment insertion and allow skipping further processing.
- [`pre_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_option_option/) - The <code>$default_value</code> parameter was added.
- [`pre_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_site_option_option/) - The <code>$default_value</code> parameter was added.
- [`set_auth_cookie`](https://developer.wordpress.org/reference/hooks/set_auth_cookie/) - The <code>$token</code> parameter was added.
- [`set_comment_cookies`](https://developer.wordpress.org/reference/hooks/set_comment_cookies/) (4.9.6) - The <code>$cookies_consent</code> parameter was added.
- [`set_logged_in_cookie`](https://developer.wordpress.org/reference/hooks/set_logged_in_cookie/) - The <code>$token</code> parameter was added.
- [`spam_comment`](https://developer.wordpress.org/reference/hooks/spam_comment/) - Added the <code>$comment</code> parameter.
- [`spammed_comment`](https://developer.wordpress.org/reference/hooks/spammed_comment/) - Added the <code>$comment</code> parameter.
- [`trash_comment`](https://developer.wordpress.org/reference/hooks/trash_comment/) - Added the <code>$comment</code> parameter.
- [`trashed_comment`](https://developer.wordpress.org/reference/hooks/trashed_comment/) - Added the <code>$comment</code> parameter.
- [`unspam_comment`](https://developer.wordpress.org/reference/hooks/unspam_comment/) - Added the <code>$comment</code> parameter.
- [`unspammed_comment`](https://developer.wordpress.org/reference/hooks/unspammed_comment/) - Added the <code>$comment</code> parameter.
- [`untrash_comment`](https://developer.wordpress.org/reference/hooks/untrash_comment/) - Added the <code>$comment</code> parameter.
- [`untrashed_comment`](https://developer.wordpress.org/reference/hooks/untrashed_comment/) - Added the <code>$comment</code> parameter.
- [`widget_archives_args`](https://developer.wordpress.org/reference/hooks/widget_archives_args/) - Added the <code>$instance</code> parameter.
- [`widget_archives_dropdown_args`](https://developer.wordpress.org/reference/hooks/widget_archives_dropdown_args/) - Added the <code>$instance</code> parameter.
- [`widget_categories_args`](https://developer.wordpress.org/reference/hooks/widget_categories_args/) - Added the <code>$instance</code> parameter.
- [`widget_categories_dropdown_args`](https://developer.wordpress.org/reference/hooks/widget_categories_dropdown_args/) - Added the <code>$instance</code> parameter.
- [`widget_comments_args`](https://developer.wordpress.org/reference/hooks/widget_comments_args/) - Added the <code>$instance</code> parameter.
- [`widget_meta_poweredby`](https://developer.wordpress.org/reference/hooks/widget_meta_poweredby/) - Added the <code>$instance</code> parameter.
- [`widget_pages_args`](https://developer.wordpress.org/reference/hooks/widget_pages_args/) - Added the <code>$instance</code> parameter.
- [`widget_posts_args`](https://developer.wordpress.org/reference/hooks/widget_posts_args/) - Added the <code>$instance</code> parameter.
- [`widget_tag_cloud_args`](https://developer.wordpress.org/reference/hooks/widget_tag_cloud_args/) - Added the <code>$instance</code> parameter.
- [`wp_audio_shortcode_class`](https://developer.wordpress.org/reference/hooks/wp_audio_shortcode_class/) - The <code>$atts</code> parameter was added.
- [`wp_video_shortcode_class`](https://developer.wordpress.org/reference/hooks/wp_video_shortcode_class/) - The <code>$atts</code> parameter was added.

## WordPress 4.8

### New Actions

- [`print_default_editor_scripts`](https://developer.wordpress.org/reference/hooks/print_default_editor_scripts/) - Fires when the editor scripts are loaded for later initialization, after all scripts and settings are printed.

### New Filters

- [`enable_login_autofocus`](https://developer.wordpress.org/reference/hooks/enable_login_autofocus/) - Filters whether to print the call to `wp_attempt_focus()` on the login screen.
- [`file_mod_allowed`](https://developer.wordpress.org/reference/hooks/file_mod_allowed/) - Filters whether file modifications are allowed.
- [`minimum_site_name_length`](https://developer.wordpress.org/reference/hooks/minimum_site_name_length/) - Filters the minimum site name length required when validating a site signup.
- [`nav_menu_submenu_css_class`](https://developer.wordpress.org/reference/hooks/nav_menu_submenu_css_class/) - Filters the CSS class(es) applied to a menu list element.
- [`page_menu_link_attributes`](https://developer.wordpress.org/reference/hooks/page_menu_link_attributes/) - Filters the HTML attributes applied to a page menu item's anchor element.
- [`post_date_column_status`](https://developer.wordpress.org/reference/hooks/post_date_column_status/) - Filters the status text of the post.
- [`rest_oembed_ttl`](https://developer.wordpress.org/reference/hooks/rest_oembed_ttl/) - Filters the oEmbed TTL value (time to live).
- [`rest_pre_echo_response`](https://developer.wordpress.org/reference/hooks/rest_pre_echo_response/) (4.8.1) - Filters the REST API response.
- [`signup_site_meta`](https://developer.wordpress.org/reference/hooks/signup_site_meta/) - Filters the metadata for a site signup.
- [`signup_user_meta`](https://developer.wordpress.org/reference/hooks/signup_user_meta/) - Filters the metadata for a user signup.
- [`widget_custom_html_content`](https://developer.wordpress.org/reference/hooks/widget_custom_html_content/) (4.8.1) - Filters the content of the Custom HTML widget.
- [`widget_text_content`](https://developer.wordpress.org/reference/hooks/widget_text_content/) - Filters the content of the Text widget to apply changes expected from the visual (TinyMCE) editor.
- [`widget_{$this->id_base}_instance`](https://developer.wordpress.org/reference/hooks/widget_this-id_base_instance/) - Filters the media widget instance prior to rendering the media.
- [`wp_doing_cron`](https://developer.wordpress.org/reference/hooks/wp_doing_cron/) - Filters whether the current request is a WordPress cron request.

### Changes

- [`{$type}_template`](https://developer.wordpress.org/reference/hooks/type_template/) - The <code>$type</code> and <code>$templates</code> parameters were added.
- [`display_media_states`](https://developer.wordpress.org/reference/hooks/display_media_states/) - Added the <code>$post</code> parameter.
- [`media_library_show_audio_playlist`](https://developer.wordpress.org/reference/hooks/media_library_show_audio_playlist/) - The filter's default value is <code>true</code> rather than <code>null</code>.
- [`media_library_show_video_playlist`](https://developer.wordpress.org/reference/hooks/media_library_show_video_playlist/) - The filter's default value is <code>true</code> rather than <code>null</code>.
- [`rest_pre_insert_comment`](https://developer.wordpress.org/reference/hooks/rest_pre_insert_comment/) - <code>$prepared_comment</code> can now be a WP_Error to short-circuit insertion.
- [`widget_text`](https://developer.wordpress.org/reference/hooks/widget_text/) (4.8.1) - The <code>$widget</code> param may now be a <code>WP_Widget_Custom_HTML</code> object in addition to a <code>WP_Widget_Text</code> object.
- [`wp_is_large_network`](https://developer.wordpress.org/reference/hooks/wp_is_large_network/) - The <code>$network_id</code> parameter has been added.

## WordPress 4.7

### New Actions

- [`change_locale`](https://developer.wordpress.org/reference/hooks/change_locale/) - Fires when the locale is switched to or restored.
- [`pre_trackback_post`](https://developer.wordpress.org/reference/hooks/pre_trackback_post/) - Fires before the trackback is added to a post.
- [`requests-{$hook}`](https://developer.wordpress.org/reference/hooks/requests-hook/) - Transforms a native Request hook to a WordPress action.
- [`rest_delete_comment`](https://developer.wordpress.org/reference/hooks/rest_delete_comment/) - Fires after a comment is deleted via the REST API.
- [`rest_delete_revision`](https://developer.wordpress.org/reference/hooks/rest_delete_revision/) - Fires after a revision is deleted via the REST API.
- [`rest_delete_user`](https://developer.wordpress.org/reference/hooks/rest_delete_user/) - Fires immediately after a user is deleted via the REST API.
- [`rest_delete_{$this->post_type}`](https://developer.wordpress.org/reference/hooks/rest_delete_this-post_type/) - Fires immediately after a single post is deleted or trashed via the REST API.
- [`rest_delete_{$this->taxonomy}`](https://developer.wordpress.org/reference/hooks/rest_delete_this-taxonomy/) - Fires after a single term is deleted via the REST API.
- [`rest_insert_attachment`](https://developer.wordpress.org/reference/hooks/rest_insert_attachment/) - Fires after a single attachment is created or updated via the REST API.
- [`rest_insert_comment`](https://developer.wordpress.org/reference/hooks/rest_insert_comment/) - Fires after a comment is created or updated via the REST API.
- [`rest_insert_user`](https://developer.wordpress.org/reference/hooks/rest_insert_user/) - Fires immediately after a user is created or updated via the REST API.
- [`rest_insert_{$this->post_type}`](https://developer.wordpress.org/reference/hooks/rest_insert_this-post_type/) - Fires after a single post is created or updated via the REST API.
- [`rest_insert_{$this->taxonomy}`](https://developer.wordpress.org/reference/hooks/rest_insert_this-taxonomy/) - Fires after a single term is created or updated via the REST API.
- [`restore_previous_locale`](https://developer.wordpress.org/reference/hooks/restore_previous_locale/) - Fires when the locale is restored to the previous one.
- [`switch_locale`](https://developer.wordpress.org/reference/hooks/switch_locale/) - Fires when the locale is switched.
- [`wp_roles_init`](https://developer.wordpress.org/reference/hooks/wp_roles_init/) - Fires after the roles have been initialized, allowing plugins to add their own roles.

### New Filters

- [`customize_changeset_save_data`](https://developer.wordpress.org/reference/hooks/customize_changeset_save_data/) - Filters the settings' data that will be persisted into the changeset.
- [`do_shortcode_tag`](https://developer.wordpress.org/reference/hooks/do_shortcode_tag/) - Filters the output created by a shortcode callback.
- [`fallback_intermediate_image_sizes`](https://developer.wordpress.org/reference/hooks/fallback_intermediate_image_sizes/) - Filters the image sizes generated for non-image mime types.
- [`get_available_languages`](https://developer.wordpress.org/reference/hooks/get_available_languages/) - Filters the list of available language codes.
- [`get_header_video_url`](https://developer.wordpress.org/reference/hooks/get_header_video_url/) (4.7.3) - Filters the header video URL.
- [`get_theme_starter_content`](https://developer.wordpress.org/reference/hooks/get_theme_starter_content/) - Filters the expanded array of starter content.
- [`handle_bulk_actions-{$screen}`](https://developer.wordpress.org/reference/hooks/handle_bulk_actions-screen/) - Fires when a custom bulk action should be handled.
- [`handle_network_bulk_actions-{$screen}`](https://developer.wordpress.org/reference/hooks/handle_network_bulk_actions-screen/) - Fires when a custom bulk action should be handled.
- [`header_video_settings`](https://developer.wordpress.org/reference/hooks/header_video_settings/) - Filters header video settings.
- [`is_header_video_active`](https://developer.wordpress.org/reference/hooks/is_header_video_active/) - Filters whether the custom header video is eligible to show on the current page.
- [`media_library_months_with_files`](https://developer.wordpress.org/reference/hooks/media_library_months_with_files/) (4.7.4) - Allows overriding the list of months displayed in the media library.
- [`media_library_show_audio_playlist`](https://developer.wordpress.org/reference/hooks/media_library_show_audio_playlist/) (4.7.4) - Allows showing or hiding the "Create Audio Playlist" button in the media library.
- [`media_library_show_video_playlist`](https://developer.wordpress.org/reference/hooks/media_library_show_video_playlist/) (4.7.4) - Allows showing or hiding the "Create Video Playlist" button in the media library.
- [`parent_theme_file_path`](https://developer.wordpress.org/reference/hooks/parent_theme_file_path/) - Filters the path to a file in the parent theme.
- [`parent_theme_file_uri`](https://developer.wordpress.org/reference/hooks/parent_theme_file_uri/) - Filters the URL to a file in the parent theme.
- [`post_password_required`](https://developer.wordpress.org/reference/hooks/post_password_required/) - Filters whether a post requires the user to supply a password.
- [`pre_do_shortcode_tag`](https://developer.wordpress.org/reference/hooks/pre_do_shortcode_tag/) - Filters whether to call a shortcode callback.
- [`register_setting_args`](https://developer.wordpress.org/reference/hooks/register_setting_args/) - Filters the registration arguments when registering a setting.
- [`rest_allow_anonymous_comments`](https://developer.wordpress.org/reference/hooks/rest_allow_anonymous_comments/) - Filters whether comments can be created via the REST API without authentication.
- [`rest_comment_collection_params`](https://developer.wordpress.org/reference/hooks/rest_comment_collection_params/) - Filters REST API collection parameters for the comments controller.
- [`rest_comment_query`](https://developer.wordpress.org/reference/hooks/rest_comment_query/) - Filters WP_Comment_Query arguments when querying comments via the REST API.
- [`rest_comment_trashable`](https://developer.wordpress.org/reference/hooks/rest_comment_trashable/) - Filters whether a comment can be trashed via the REST API.
- [`rest_pre_get_setting`](https://developer.wordpress.org/reference/hooks/rest_pre_get_setting/) - Filters the value of a setting recognized by the REST API.
- [`rest_pre_insert_comment`](https://developer.wordpress.org/reference/hooks/rest_pre_insert_comment/) - Filters a comment before it is inserted via the REST API.
- [`rest_pre_insert_user`](https://developer.wordpress.org/reference/hooks/rest_pre_insert_user/) - Filters user data before insertion via the REST API.
- [`rest_pre_insert_{$this->post_type}`](https://developer.wordpress.org/reference/hooks/rest_pre_insert_this-post_type/) - Filters a post before it is inserted via the REST API.
- [`rest_pre_insert_{$this->taxonomy}`](https://developer.wordpress.org/reference/hooks/rest_pre_insert_this-taxonomy/) - Filters term data before inserting term via the REST API.
- [`rest_pre_update_setting`](https://developer.wordpress.org/reference/hooks/rest_pre_update_setting/) - Filters whether to preempt a setting value update via the REST API.
- [`rest_prepare_attachment`](https://developer.wordpress.org/reference/hooks/rest_prepare_attachment/) - Filters an attachment returned from the REST API.
- [`rest_prepare_comment`](https://developer.wordpress.org/reference/hooks/rest_prepare_comment/) - Filters a comment returned from the REST API.
- [`rest_prepare_post_type`](https://developer.wordpress.org/reference/hooks/rest_prepare_post_type/) - Filters a post type returned from the REST API.
- [`rest_prepare_revision`](https://developer.wordpress.org/reference/hooks/rest_prepare_revision/) - Filters a revision returned from the REST API.
- [`rest_prepare_status`](https://developer.wordpress.org/reference/hooks/rest_prepare_status/) - Filters a post status returned from the REST API.
- [`rest_prepare_taxonomy`](https://developer.wordpress.org/reference/hooks/rest_prepare_taxonomy/) - Filters a taxonomy returned from the REST API.
- [`rest_prepare_user`](https://developer.wordpress.org/reference/hooks/rest_prepare_user/) - Filters user data returned from the REST API.
- [`rest_prepare_{$this->post_type}`](https://developer.wordpress.org/reference/hooks/rest_prepare_this-post_type/) - Filters the post data for a REST API response.
- [`rest_prepare_{$this->taxonomy}`](https://developer.wordpress.org/reference/hooks/rest_prepare_this-taxonomy/) - Filters the term data for a REST API response.
- [`rest_preprocess_comment`](https://developer.wordpress.org/reference/hooks/rest_preprocess_comment/) - Filters a comment added via the REST API after it is prepared for insertion into the database.
- [`rest_query_var-{$key}`](https://developer.wordpress.org/reference/hooks/rest_query_var-key/) - Filters the query_vars used in get_items() for the constructed query.
- [`rest_request_after_callbacks`](https://developer.wordpress.org/reference/hooks/rest_request_after_callbacks/) - Filters the response immediately after executing any REST API callbacks.
- [`rest_request_before_callbacks`](https://developer.wordpress.org/reference/hooks/rest_request_before_callbacks/) - Filters the response before executing any REST API callbacks.
- [`rest_user_collection_params`](https://developer.wordpress.org/reference/hooks/rest_user_collection_params/) - Filters REST API collection parameters for the users controller.
- [`rest_user_query`](https://developer.wordpress.org/reference/hooks/rest_user_query/) - Filters WP_User_Query arguments when querying users via the REST API.
- [`rest_{$this->post_type}_collection_params`](https://developer.wordpress.org/reference/hooks/rest_this-post_type_collection_params/) - Filters collection parameters for the posts controller.
- [`rest_{$this->post_type}_query`](https://developer.wordpress.org/reference/hooks/rest_this-post_type_query/) - Filters WP_Query arguments when querying posts via the REST API.
- [`rest_{$this->post_type}_trashable`](https://developer.wordpress.org/reference/hooks/rest_this-post_type_trashable/) - Filters whether a post is trashable.
- [`rest_{$this->taxonomy}_collection_params`](https://developer.wordpress.org/reference/hooks/rest_this-taxonomy_collection_params/) - Filters collection parameters for the terms controller.
- [`rest_{$this->taxonomy}_query`](https://developer.wordpress.org/reference/hooks/rest_this-taxonomy_query/) - Filters get_terms() arguments when querying terms via the REST API.
- [`sanitize_textarea_field`](https://developer.wordpress.org/reference/hooks/sanitize_textarea_field/) - Filters a sanitized textarea field string.
- [`send_auth_cookies`](https://developer.wordpress.org/reference/hooks/send_auth_cookies/) (4.7.4) - Allows preventing auth cookies from actually being sent to the client.
- [`smilies`](https://developer.wordpress.org/reference/hooks/smilies/) - Filters all the smilies.
- [`strip_shortcodes_tagnames`](https://developer.wordpress.org/reference/hooks/strip_shortcodes_tagnames/) - Filters the list of shortcode tags to remove from the content.
- [`theme_file_path`](https://developer.wordpress.org/reference/hooks/theme_file_path/) - Filters the path to a file in the theme.
- [`theme_file_uri`](https://developer.wordpress.org/reference/hooks/theme_file_uri/) - Filters the URL to a file in the theme.
- [`theme_scandir_exclusions`](https://developer.wordpress.org/reference/hooks/theme_scandir_exclusions/) (4.7.4) - Filters the array of excluded directories and files while scanning theme folder.
- [`update_custom_css_data`](https://developer.wordpress.org/reference/hooks/update_custom_css_data/) - Filters the `css` (`post_content`) and `preprocessed` (`post_content_filtered`) args for a `custom_css` post being updated.
- [`wp_doing_ajax`](https://developer.wordpress.org/reference/hooks/wp_doing_ajax/) - Filters whether the current request is a WordPress Ajax request.
- [`wp_get_custom_css`](https://developer.wordpress.org/reference/hooks/wp_get_custom_css/) - Filters the custom CSS output into the head element.
- [`wp_insert_term_data`](https://developer.wordpress.org/reference/hooks/wp_insert_term_data/) - Filters term data before it is inserted into the database.
- [`wp_is_comment_flood`](https://developer.wordpress.org/reference/hooks/wp_is_comment_flood/) - Filters whether a comment is part of a comment flood.
- [`wp_query_search_exclusion_prefix`](https://developer.wordpress.org/reference/hooks/wp_query_search_exclusion_prefix/) - Filters the prefix that indicates that a search term should be excluded from results.
- [`wp_update_comment_data`](https://developer.wordpress.org/reference/hooks/wp_update_comment_data/) - Filters the comment data immediately before it is updated in the database.
- [`wp_update_term_data`](https://developer.wordpress.org/reference/hooks/wp_update_term_data/) - Filters term data before it is updated in the database.
- [`{$type}_template_hierarchy`](https://developer.wordpress.org/reference/hooks/type_template_hierarchy/) - Filters the list of template filenames that are searched for when retrieving a template to use.

### Changes

- [`add_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/add_site_option_option/) - The <code>$network_id</code> parameter was added.
- [`add_site_option`](https://developer.wordpress.org/reference/hooks/add_site_option/) - The <code>$network_id</code> parameter was added.
- [`add_term_relationship`](https://developer.wordpress.org/reference/hooks/add_term_relationship/) - Added the <code>$taxonomy</code> parameter.
- [`added_term_relationship`](https://developer.wordpress.org/reference/hooks/added_term_relationship/) - Added the <code>$taxonomy</code> parameter.
- [`check_comment_flood`](https://developer.wordpress.org/reference/hooks/check_comment_flood/) - The <code>$avoid_die</code> parameter was added.
- [`comment_max_links_url`](https://developer.wordpress.org/reference/hooks/comment_max_links_url/) - Added the <code>$comment</code> parameter.
- [`customize_nav_menu_available_item_types`](https://developer.wordpress.org/reference/hooks/customize_nav_menu_available_item_types/) - Each array item now includes a <code>$type_label</code> in addition to <code>$title</code>, <code>$type</code>, and <code>$object</code>.
- [`default_option_{$option}`](https://developer.wordpress.org/reference/hooks/default_option_option/) - The <code>$passed_default</code> parameter was added to distinguish between a <code>false</code> value and the default parameter value.
- [`default_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/default_site_option_option/) - The <code>$network_id</code> parameter was added.
- [`delete_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/delete_site_option_option/) - The <code>$network_id</code> parameter was added.
- [`delete_site_option`](https://developer.wordpress.org/reference/hooks/delete_site_option/) - The <code>$network_id</code> parameter was added.
- [`delete_term_relationships`](https://developer.wordpress.org/reference/hooks/delete_term_relationships/) - Added the <code>$taxonomy</code> parameter.
- [`deleted_term_relationships`](https://developer.wordpress.org/reference/hooks/deleted_term_relationships/) - Added the <code>$taxonomy</code> parameter.
- [`get_page_of_comment`](https://developer.wordpress.org/reference/hooks/get_page_of_comment/) - Introduced the <code>$comment_id</code> parameter.
- [`pre_add_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_add_site_option_option/) - The <code>$network_id</code> parameter was added.
- [`pre_delete_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_delete_site_option_option/) - The <code>$network_id</code> parameter was added.
- [`pre_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_site_option_option/) - The <code>$network_id</code> parameter was added.
- [`pre_update_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_update_site_option_option/) - The <code>$network_id</code> parameter was added.
- [`site_option_{$option}`](https://developer.wordpress.org/reference/hooks/site_option_option/) - The <code>$network_id</code> parameter was added.
- [`theme_{$post_type}_templates`](https://developer.wordpress.org/reference/hooks/theme_post_type_templates/) - Added the <code>$post_type</code> parameter.
- [`update_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/update_site_option_option/) - The <code>$network_id</code> parameter was added.
- [`update_site_option`](https://developer.wordpress.org/reference/hooks/update_site_option/) - The <code>$network_id</code> parameter was added.
- [`user_profile_picture_description`](https://developer.wordpress.org/reference/hooks/user_profile_picture_description/) - Added the <code>$profile_user</code> parameter.
- [`wp_resource_hints`](https://developer.wordpress.org/reference/hooks/wp_resource_hints/) - The <code>$urls</code> parameter accepts arrays of specific HTML attributes as its child elements.

## WordPress 4.6

### New Actions

- [`admin_print_footer_scripts-{$hook_suffix}`](https://developer.wordpress.org/reference/hooks/admin_print_footer_scripts-hook_suffix/) - Prints scripts and data queued for the footer.
- [`clean_network_cache`](https://developer.wordpress.org/reference/hooks/clean_network_cache/) - Fires immediately after a network has been removed from the object cache.
- [`clean_site_cache`](https://developer.wordpress.org/reference/hooks/clean_site_cache/) - Fires immediately after a site has been removed from the object cache.
- [`customize_save_validation_before`](https://developer.wordpress.org/reference/hooks/customize_save_validation_before/) - Fires before save validation happens.
- [`deprecated_hook_run`](https://developer.wordpress.org/reference/hooks/deprecated_hook_run/) - Fires when a deprecated hook is called.
- [`login_header`](https://developer.wordpress.org/reference/hooks/login_header/) - Fires in the login page header after the body tag is opened.
- [`ms_loaded`](https://developer.wordpress.org/reference/hooks/ms_loaded/) - Fires after the current site and network have been detected and loaded in multisite's bootstrap.
- [`parse_network_query`](https://developer.wordpress.org/reference/hooks/parse_network_query/) - Fires after the network query vars have been parsed.
- [`parse_site_query`](https://developer.wordpress.org/reference/hooks/parse_site_query/) - Fires after the site query vars have been parsed.
- [`parse_term_query`](https://developer.wordpress.org/reference/hooks/parse_term_query/) - Fires after term query vars have been parsed.
- [`post_action_{$action}`](https://developer.wordpress.org/reference/hooks/post_action_action/) - Fires for a given custom post action request.
- [`post_stuck`](https://developer.wordpress.org/reference/hooks/post_stuck/) - Fires once a post has been added to the sticky list.
- [`post_unstuck`](https://developer.wordpress.org/reference/hooks/post_unstuck/) - Fires once a post has been removed from the sticky list.
- [`pre_get_networks`](https://developer.wordpress.org/reference/hooks/pre_get_networks/) - Fires before networks are retrieved.
- [`pre_get_sites`](https://developer.wordpress.org/reference/hooks/pre_get_sites/) - Fires before sites are retrieved.
- [`pre_get_terms`](https://developer.wordpress.org/reference/hooks/pre_get_terms/) - Fires before terms are retrieved.
- [`wp_edit_form_attachment_display`](https://developer.wordpress.org/reference/hooks/wp_edit_form_attachment_display/) - Fires when an attachment type can't be rendered in the edit form.

### New Filters

- [`customize_validate_{$this->id}`](https://developer.wordpress.org/reference/hooks/customize_validate_this-id/) - Validates a Customize setting value.
- [`deprecated_hook_trigger_error`](https://developer.wordpress.org/reference/hooks/deprecated_hook_trigger_error/) - Filters whether to trigger deprecated hook errors.
- [`disable_categories_dropdown`](https://developer.wordpress.org/reference/hooks/disable_categories_dropdown/) - Filters whether to remove the 'Categories' drop-down from the post list table.
- [`emoji_svg_ext`](https://developer.wordpress.org/reference/hooks/emoji_svg_ext/) - Filters the extension of the emoji SVG files.
- [`emoji_svg_url`](https://developer.wordpress.org/reference/hooks/emoji_svg_url/) - Filters the URL where emoji SVG images are hosted.
- [`enable_loading_advanced_cache_dropin`](https://developer.wordpress.org/reference/hooks/enable_loading_advanced_cache_dropin/) - Filters whether to enable loading of the advanced-cache.php drop-in.
- [`enable_maintenance_mode`](https://developer.wordpress.org/reference/hooks/enable_maintenance_mode/) - Filters whether to enable maintenance mode.
- [`enable_wp_debug_mode_checks`](https://developer.wordpress.org/reference/hooks/enable_wp_debug_mode_checks/) - Filters whether to allow the debug mode check to occur.
- [`found_networks_query`](https://developer.wordpress.org/reference/hooks/found_networks_query/) - Filters the query used to retrieve found network count.
- [`found_sites_query`](https://developer.wordpress.org/reference/hooks/found_sites_query/) - Filters the query used to retrieve found site count.
- [`get_canonical_url`](https://developer.wordpress.org/reference/hooks/get_canonical_url/) - Filters the canonical URL for a post.
- [`get_network`](https://developer.wordpress.org/reference/hooks/get_network/) - Fires after a network is retrieved.
- [`get_site`](https://developer.wordpress.org/reference/hooks/get_site/) - Fires after a site is retrieved.
- [`ms_sites_list_table_query_args`](https://developer.wordpress.org/reference/hooks/ms_sites_list_table_query_args/) - Filters the arguments for the site query in the sites list table.
- [`network_edit_site_nav_links`](https://developer.wordpress.org/reference/hooks/network_edit_site_nav_links/) - Filters the links that appear on site-editing network pages.
- [`networks_clauses`](https://developer.wordpress.org/reference/hooks/networks_clauses/) - Filters the network query clauses.
- [`posts_pre_query`](https://developer.wordpress.org/reference/hooks/posts_pre_query/) - Filters the posts array before the query takes place.
- [`pre_get_blogs_of_user`](https://developer.wordpress.org/reference/hooks/pre_get_blogs_of_user/) - Filters the list of a user's sites before it is populated.
- [`redirect_term_location`](https://developer.wordpress.org/reference/hooks/redirect_term_location/) - Filters the taxonomy redirect destination URL.
- [`register_meta_args`](https://developer.wordpress.org/reference/hooks/register_meta_args/) - Filters the registration arguments when registering meta.
- [`site_details`](https://developer.wordpress.org/reference/hooks/site_details/) - Filters a site's extended properties.
- [`site_search_columns`](https://developer.wordpress.org/reference/hooks/site_search_columns/) - Filters the columns to search in a WP_Site_Query search.
- [`sites_clauses`](https://developer.wordpress.org/reference/hooks/sites_clauses/) - Filters the site query clauses.
- [`the_networks`](https://developer.wordpress.org/reference/hooks/the_networks/) - Filters the network query results.
- [`the_post_thumbnail_caption`](https://developer.wordpress.org/reference/hooks/the_post_thumbnail_caption/) - Filters the displayed post thumbnail caption.
- [`the_sites`](https://developer.wordpress.org/reference/hooks/the_sites/) - Filters the site query results.
- [`wp_get_attachment_caption`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_caption/) - Filters the attachment caption.
- [`wp_resource_hints`](https://developer.wordpress.org/reference/hooks/wp_resource_hints/) - Filters domains and URLs for resource hints of the given relation type.
- [`wxr_export_skip_termmeta`](https://developer.wordpress.org/reference/hooks/wxr_export_skip_termmeta/) - Filters whether to selectively skip term meta used for WXR exports.
- [`{$context}_memory_limit`](https://developer.wordpress.org/reference/hooks/context_memory_limit/) - Filters the memory limit allocated for an arbitrary context.

### Changes

- [`admin_memory_limit`](https://developer.wordpress.org/reference/hooks/admin_memory_limit/) - The default now takes the original <code>memory_limit</code> into account.
- [`admin_post_thumbnail_html`](https://developer.wordpress.org/reference/hooks/admin_post_thumbnail_html/) - Added the <code>$thumbnail_id</code> parameter.
- [`customize_value_{$id_base}`](https://developer.wordpress.org/reference/hooks/customize_value_id_base/) - Added the <code>$this</code> setting instance as the second parameter.
- [`date_query_valid_columns`](https://developer.wordpress.org/reference/hooks/date_query_valid_columns/) - Added 'registered' and 'last_updated' to the default recognized columns.
- [`edit_comment`](https://developer.wordpress.org/reference/hooks/edit_comment/) - Added the <code>$data</code> parameter.
- [`fs_ftp_connection_types`](https://developer.wordpress.org/reference/hooks/fs_ftp_connection_types/) - The <code>$context</code> parameter default changed from <code>false</code> to an empty string.
- [`get_custom_logo`](https://developer.wordpress.org/reference/hooks/get_custom_logo/) - Added the <code>$blog_id</code> parameter.
- [`get_terms`](https://developer.wordpress.org/reference/hooks/get_terms/) - Added the <code>$term_query</code> parameter.
- [`get_the_modified_date`](https://developer.wordpress.org/reference/hooks/get_the_modified_date/) - Added the <code>$post</code> parameter.
- [`get_the_modified_time`](https://developer.wordpress.org/reference/hooks/get_the_modified_time/) - Added the <code>$post</code> parameter.
- [`image_memory_limit`](https://developer.wordpress.org/reference/hooks/image_memory_limit/) - The default now takes the original <code>memory_limit</code> into account.
- [`nav_menu_items_{$post_type_name}`](https://developer.wordpress.org/reference/hooks/nav_menu_items_post_type_name/) - Converted the <code>$post_type</code> parameter to accept a WP_Post_Type object.
- [`registered_post_type`](https://developer.wordpress.org/reference/hooks/registered_post_type/) - Converted the <code>$post_type</code> parameter to accept a <code>WP_Post_Type</code> object.
- [`request_filesystem_credentials`](https://developer.wordpress.org/reference/hooks/request_filesystem_credentials/) - The <code>$context</code> parameter default changed from <code>false</code> to an empty string.
- [`restrict_manage_posts`](https://developer.wordpress.org/reference/hooks/restrict_manage_posts/) - The <code>$which</code> parameter was added.
- [`restrict_manage_users`](https://developer.wordpress.org/reference/hooks/restrict_manage_users/) - The <code>$which</code> parameter was added.
- [`upgrader_process_complete`](https://developer.wordpress.org/reference/hooks/upgrader_process_complete/) - <code>$translations</code> was added as a possible argument to <code>$hook_extra</code>.
- [`xmlrpc_prepare_post_type`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_post_type/) - Converted the <code>$post_type</code> parameter to accept a WP_Post_Type object.

## WordPress 4.5

### New Actions

- [`clean_comment_cache`](https://developer.wordpress.org/reference/hooks/clean_comment_cache/) - Fires immediately after a comment has been removed from the object cache.
- [`customize_render_partials_after`](https://developer.wordpress.org/reference/hooks/customize_render_partials_after/) - Fires immediately after partials are rendered.
- [`customize_render_partials_before`](https://developer.wordpress.org/reference/hooks/customize_render_partials_before/) - Fires immediately before partials are rendered.
- [`metadata_lazyloader_queued_objects`](https://developer.wordpress.org/reference/hooks/metadata_lazyloader_queued_objects/) - Fires after objects are added to the metadata lazy-load queue.
- [`network_site_new_form`](https://developer.wordpress.org/reference/hooks/network_site_new_form/) - Fires at the end of the new site form in network admin.
- [`network_user_new_form`](https://developer.wordpress.org/reference/hooks/network_user_new_form/) - Fires at the end of the new user form in network admin.
- [`pre_network_site_new_created_user`](https://developer.wordpress.org/reference/hooks/pre_network_site_new_created_user/) - Fires immediately before a new user is created via the network site-new.php page.
- [`pre_uninstall_plugin`](https://developer.wordpress.org/reference/hooks/pre_uninstall_plugin/) - Fires in uninstall_plugin() immediately before the plugin is uninstalled.
- [`unregistered_post_type`](https://developer.wordpress.org/reference/hooks/unregistered_post_type/) - Fires after a post type was unregistered.
- [`unregistered_taxonomy`](https://developer.wordpress.org/reference/hooks/unregistered_taxonomy/) - Fires after a taxonomy is unregistered.
- [`{$taxonomy}_term_edit_form_top`](https://developer.wordpress.org/reference/hooks/taxonomy_term_edit_form_top/) - Fires at the beginning of the Edit Term form.

### New Filters

- [`comments_template_query_args`](https://developer.wordpress.org/reference/hooks/comments_template_query_args/) - Filters the arguments used to query comments in comments_template().
- [`customize_dynamic_partial_args`](https://developer.wordpress.org/reference/hooks/customize_dynamic_partial_args/) - Filters a dynamic partial's constructor arguments.
- [`customize_dynamic_partial_class`](https://developer.wordpress.org/reference/hooks/customize_dynamic_partial_class/) - Filters the class used to construct partials.
- [`customize_nav_menu_searched_items`](https://developer.wordpress.org/reference/hooks/customize_nav_menu_searched_items/) - Filters the available menu items during a search request.
- [`customize_partial_render`](https://developer.wordpress.org/reference/hooks/customize_partial_render/) - Filters partial rendering.
- [`customize_partial_render_{$partial->id}`](https://developer.wordpress.org/reference/hooks/customize_partial_render_partial-id/) - Filters partial rendering for a specific partial.
- [`customize_previewable_devices`](https://developer.wordpress.org/reference/hooks/customize_previewable_devices/) - Filters the available devices to allow previewing in the Customizer.
- [`customize_render_partials_response`](https://developer.wordpress.org/reference/hooks/customize_render_partials_response/) - Filters the response from rendering the partials.
- [`get_custom_logo`](https://developer.wordpress.org/reference/hooks/get_custom_logo/) - Filters the custom logo output.
- [`image_strip_meta`](https://developer.wordpress.org/reference/hooks/image_strip_meta/) - Filters whether to strip metadata from images when they're resized.
- [`network_allowed_themes`](https://developer.wordpress.org/reference/hooks/network_allowed_themes/) - Filters the array of themes allowed on the network.
- [`pre_handle_404`](https://developer.wordpress.org/reference/hooks/pre_handle_404/) - Filters whether to short-circuit default header status handling.
- [`pre_oembed_result`](https://developer.wordpress.org/reference/hooks/pre_oembed_result/) (4.5.3) - Filters the oEmbed result before any HTTP requests are made.
- [`pre_wp_update_comment_count_now`](https://developer.wordpress.org/reference/hooks/pre_wp_update_comment_count_now/) - Filters a post's comment count before it is updated in the database.
- [`rest_request_from_url`](https://developer.wordpress.org/reference/hooks/rest_request_from_url/) - Filters the REST API request generated from a URL.
- [`rest_response_link_curies`](https://developer.wordpress.org/reference/hooks/rest_response_link_curies/) - Filters extra CURIEs available on REST API responses.
- [`site_allowed_themes`](https://developer.wordpress.org/reference/hooks/site_allowed_themes/) - Filters the array of themes allowed on the site.
- [`wp_calculate_image_srcset_meta`](https://developer.wordpress.org/reference/hooks/wp_calculate_image_srcset_meta/) - Pre-filters the image meta to be able to fix inconsistencies in the stored data.
- [`wp_get_comment_fields_max_lengths`](https://developer.wordpress.org/reference/hooks/wp_get_comment_fields_max_lengths/) - Filters the lengths for the comment form fields.
- [`wp_unique_filename`](https://developer.wordpress.org/reference/hooks/wp_unique_filename/) - Filters the result when generating a unique file name.

### Changes

- [`_wp_post_revision_fields`](https://developer.wordpress.org/reference/hooks/_wp_post_revision_fields/) - The <code>$post</code> parameter was added.
- [`authenticate`](https://developer.wordpress.org/reference/hooks/authenticate/) - <code>$username</code> now accepts an email address.
- [`clean_term_cache`](https://developer.wordpress.org/reference/hooks/clean_term_cache/) - Added the <code>$clean_taxonomy</code> parameter.
- [`comment_post`](https://developer.wordpress.org/reference/hooks/comment_post/) - The <code>$commentdata</code> parameter was added.
- [`cron_request`](https://developer.wordpress.org/reference/hooks/cron_request/) - The <code>$doing_wp_cron</code> parameter was added.
- [`delete_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/delete_taxonomy/) - Introduced the <code>$object_ids</code> argument.
- [`delete_term`](https://developer.wordpress.org/reference/hooks/delete_term/) - Introduced the <code>$object_ids</code> argument.
- [`delete_user_form`](https://developer.wordpress.org/reference/hooks/delete_user_form/) - The <code>$user_ids</code> parameter was added.
- [`deprecated_constructor_run`](https://developer.wordpress.org/reference/hooks/deprecated_constructor_run/) - Added the <code>$parent_class</code> parameter.
- [`embed_thumbnail_image_shape`](https://developer.wordpress.org/reference/hooks/embed_thumbnail_image_shape/) - Added <code>$thumbnail_id</code> parameter.
- [`embed_thumbnail_image_size`](https://developer.wordpress.org/reference/hooks/embed_thumbnail_image_size/) - Added <code>$thumbnail_id</code> parameter.
- [`get_archives_link`](https://developer.wordpress.org/reference/hooks/get_archives_link/) - Added the <code>$url</code>, <code>$text</code>, <code>$format</code>, <code>$before</code>, and <code>$after</code> parameters.
- [`get_the_excerpt`](https://developer.wordpress.org/reference/hooks/get_the_excerpt/) - Introduced the <code>$post</code> parameter.
- [`plugins_update_check_locales`](https://developer.wordpress.org/reference/hooks/plugins_update_check_locales/) - The default value of the <code>$locales</code> parameter changed to include all locales.
- [`privacy_on_link_title`](https://developer.wordpress.org/reference/hooks/privacy_on_link_title/) - The default for <code>$title</code> was updated to an empty string.
- [`rest_dispatch_request`](https://developer.wordpress.org/reference/hooks/rest_dispatch_request/) - Added <code>$route</code> and <code>$handler</code> parameters.
- [`rest_post_dispatch`](https://developer.wordpress.org/reference/hooks/rest_post_dispatch/) - Applied to embedded responses.
- [`style_loader_tag`](https://developer.wordpress.org/reference/hooks/style_loader_tag/) - Introduced the <code>$media</code> parameter.
- [`switch_theme`](https://developer.wordpress.org/reference/hooks/switch_theme/) - Introduced the <code>$old_theme</code> parameter.
- [`themes_update_check_locales`](https://developer.wordpress.org/reference/hooks/themes_update_check_locales/) - The default value of the <code>$locales</code> parameter changed to include all locales.
- [`wp_login_failed`](https://developer.wordpress.org/reference/hooks/wp_login_failed/) - The value of <code>$username</code> can now be an email address.

## WordPress 4.4

### New Actions

- [`after_password_reset`](https://developer.wordpress.org/reference/hooks/after_password_reset/) - Fires after the user's password is reset.
- [`after_signup_site`](https://developer.wordpress.org/reference/hooks/after_signup_site/) - Fires after site signup information has been written to the database.
- [`after_signup_user`](https://developer.wordpress.org/reference/hooks/after_signup_user/) - Fires after a user's signup information has been written to the database.
- [`attachment_updated`](https://developer.wordpress.org/reference/hooks/attachment_updated/) - Fires once an existing attachment has been updated.
- [`before_signup_header`](https://developer.wordpress.org/reference/hooks/before_signup_header/) - Fires before the Site Sign-up page is loaded.
- [`clean_user_cache`](https://developer.wordpress.org/reference/hooks/clean_user_cache/) - Fires immediately after the given user's cache is cleaned.
- [`customize_post_value_set`](https://developer.wordpress.org/reference/hooks/customize_post_value_set/) - Announces when any setting's unsanitized post value has been set.
- [`customize_post_value_set_{$setting_id}`](https://developer.wordpress.org/reference/hooks/customize_post_value_set_setting_id/) - Announces when a specific setting's unsanitized post value has been set.
- [`delete_plugin`](https://developer.wordpress.org/reference/hooks/delete_plugin/) - Fires immediately before a plugin deletion attempt.
- [`delete_widget`](https://developer.wordpress.org/reference/hooks/delete_widget/) - Fires immediately after a widget has been marked for deletion.
- [`deleted_plugin`](https://developer.wordpress.org/reference/hooks/deleted_plugin/) - Fires immediately after a plugin deletion attempt.
- [`edit_user_created_user`](https://developer.wordpress.org/reference/hooks/edit_user_created_user/) - Fires after a new user has been created.
- [`embed_content`](https://developer.wordpress.org/reference/hooks/embed_content/) - Prints additional content after the embed excerpt.
- [`embed_content_meta`](https://developer.wordpress.org/reference/hooks/embed_content_meta/) - Prints additional meta content in the embed template.
- [`embed_footer`](https://developer.wordpress.org/reference/hooks/embed_footer/) - Prints scripts or data before the closing body tag in the embed template.
- [`embed_head`](https://developer.wordpress.org/reference/hooks/embed_head/) - Prints scripts or data in the embed template head tag.
- [`enqueue_embed_scripts`](https://developer.wordpress.org/reference/hooks/enqueue_embed_scripts/) - Fires when scripts and styles are enqueued for the embed iframe.
- [`invite_user`](https://developer.wordpress.org/reference/hooks/invite_user/) - Fires immediately after an existing user is invited to join the site, but before the notification is sent.
- [`manage_posts_extra_tablenav`](https://developer.wordpress.org/reference/hooks/manage_posts_extra_tablenav/) - Fires immediately following the closing "actions" div in the tablenav for the posts list table.
- [`ms_network_not_found`](https://developer.wordpress.org/reference/hooks/ms_network_not_found/) - Fires when a network cannot be found based on the requested domain and path.
- [`network_site_new_created_user`](https://developer.wordpress.org/reference/hooks/network_site_new_created_user/) - Fires after a new user has been created via the network site-new.php page.
- [`network_site_users_created_user`](https://developer.wordpress.org/reference/hooks/network_site_users_created_user/) - Fires after a user has been created via the network site-users.php page.
- [`network_user_new_created_user`](https://developer.wordpress.org/reference/hooks/network_user_new_created_user/) - Fires after a new user has been created via the network user-new.php page.
- [`page_attributes_meta_box_template`](https://developer.wordpress.org/reference/hooks/page_attributes_meta_box_template/) - Fires immediately after the label inside the 'Template' section of the 'Page Attributes' meta box.
- [`post_submitbox_minor_actions`](https://developer.wordpress.org/reference/hooks/post_submitbox_minor_actions/) - Fires after the Save Draft (or Save as Pending) and Preview (or Preview Changes) buttons in the Publish meta box.
- [`pre_auto_update`](https://developer.wordpress.org/reference/hooks/pre_auto_update/) - Fires immediately prior to an auto-update.
- [`register_new_user`](https://developer.wordpress.org/reference/hooks/register_new_user/) - Fires after a new user registration has been recorded.
- [`rest_api_init`](https://developer.wordpress.org/reference/hooks/rest_api_init/) - Fires when preparing to serve a REST API request.
- [`wp_add_nav_menu_item`](https://developer.wordpress.org/reference/hooks/wp_add_nav_menu_item/) - Fires immediately after a new navigation menu item has been added.
- [`wp_mail_failed`](https://developer.wordpress.org/reference/hooks/wp_mail_failed/) - Fires after a PHPMailer\PHPMailer\Exception is caught.
- [`wp_verify_nonce_failed`](https://developer.wordpress.org/reference/hooks/wp_verify_nonce_failed/) - Fires when nonce verification fails.

### New Filters

- [`admin_post_thumbnail_size`](https://developer.wordpress.org/reference/hooks/admin_post_thumbnail_size/) - Filters the size used to display the post thumbnail image in the 'Featured image' meta box.
- [`comment_excerpt_length`](https://developer.wordpress.org/reference/hooks/comment_excerpt_length/) - Filters the maximum number of words used in the comment excerpt.
- [`comment_form_fields`](https://developer.wordpress.org/reference/hooks/comment_form_fields/) - Filters the comment form fields, including the textarea.
- [`content_pagination`](https://developer.wordpress.org/reference/hooks/content_pagination/) - Filters the "pages" derived from splitting the post content.
- [`customize_loaded_components`](https://developer.wordpress.org/reference/hooks/customize_loaded_components/) - Filters the core Customizer components to load.
- [`dashboard_recent_drafts_query_args`](https://developer.wordpress.org/reference/hooks/dashboard_recent_drafts_query_args/) - Filters the post query arguments for the 'Recent Drafts' dashboard widget.
- [`dashboard_secondary_items`](https://developer.wordpress.org/reference/hooks/dashboard_secondary_items/) - Filters the number of secondary link items for the 'WordPress Events and News' dashboard widget.
- [`default_hidden_columns`](https://developer.wordpress.org/reference/hooks/default_hidden_columns/) - Filters the default list of hidden columns.
- [`document_title_parts`](https://developer.wordpress.org/reference/hooks/document_title_parts/) - Filters the parts of the document title.
- [`document_title_separator`](https://developer.wordpress.org/reference/hooks/document_title_separator/) - Filters the separator for the document title.
- [`duplicate_comment_id`](https://developer.wordpress.org/reference/hooks/duplicate_comment_id/) - Filters the ID, if any, of the duplicate comment found when creating a new comment.
- [`embed_html`](https://developer.wordpress.org/reference/hooks/embed_html/) - Filters the embed HTML output for a given post.
- [`embed_site_title_html`](https://developer.wordpress.org/reference/hooks/embed_site_title_html/) - Filters the site title HTML in the embed footer.
- [`embed_thumbnail_image_shape`](https://developer.wordpress.org/reference/hooks/embed_thumbnail_image_shape/) - Filters the thumbnail shape for use in the embed template.
- [`embed_thumbnail_image_size`](https://developer.wordpress.org/reference/hooks/embed_thumbnail_image_size/) - Filters the thumbnail image size for use in the embed template.
- [`enclosure_links`](https://developer.wordpress.org/reference/hooks/enclosure_links/) - Filters the list of enclosure links before querying the database.
- [`expiration_of_site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/expiration_of_site_transient_transient/) - Filters the expiration for a site transient before its value is set.
- [`expiration_of_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/expiration_of_transient_transient/) - Filters the expiration for a transient before its value is set.
- [`export_wp_filename`](https://developer.wordpress.org/reference/hooks/export_wp_filename/) - Filters the export filename.
- [`feed_links_show_comments_feed`](https://developer.wordpress.org/reference/hooks/feed_links_show_comments_feed/) - Filters whether to display the comments feed link.
- [`feed_links_show_posts_feed`](https://developer.wordpress.org/reference/hooks/feed_links_show_posts_feed/) - Filters whether to display the posts feed link.
- [`found_comments_query`](https://developer.wordpress.org/reference/hooks/found_comments_query/) - Filters the query used to retrieve found comment count.
- [`get_header_image_tag`](https://developer.wordpress.org/reference/hooks/get_header_image_tag/) - Filters the markup of header images.
- [`get_page_of_comment`](https://developer.wordpress.org/reference/hooks/get_page_of_comment/) - Filters the calculated page on which a comment appears.
- [`get_page_uri`](https://developer.wordpress.org/reference/hooks/get_page_uri/) - Filters the URI for a page.
- [`get_post_status`](https://developer.wordpress.org/reference/hooks/get_post_status/) - Filters the post status.
- [`get_role_list`](https://developer.wordpress.org/reference/hooks/get_role_list/) - Filters the returned array of translated role names for a user.
- [`get_sample_permalink`](https://developer.wordpress.org/reference/hooks/get_sample_permalink/) - Filters the sample permalink.
- [`get_site_icon_url`](https://developer.wordpress.org/reference/hooks/get_site_icon_url/) - Filters the site icon URL.
- [`get_terms_defaults`](https://developer.wordpress.org/reference/hooks/get_terms_defaults/) - Filters the terms query default arguments.
- [`get_{$adjacent}_post_excluded_terms`](https://developer.wordpress.org/reference/hooks/get_adjacent_post_excluded_terms/) - Filters the IDs of terms excluded from adjacent post queries.
- [`hidden_columns`](https://developer.wordpress.org/reference/hooks/hidden_columns/) - Filters the list of hidden columns.
- [`illegal_user_logins`](https://developer.wordpress.org/reference/hooks/illegal_user_logins/) - Filters the list of disallowed usernames.
- [`image_get_intermediate_size`](https://developer.wordpress.org/reference/hooks/image_get_intermediate_size/) - Filters the output of image_get_intermediate_size()
- [`insert_user_meta`](https://developer.wordpress.org/reference/hooks/insert_user_meta/) - Filters a user's meta values and keys immediately after the user is created or updated and before any user meta is inserted or updated.
- [`max_srcset_image_width`](https://developer.wordpress.org/reference/hooks/max_srcset_image_width/) - Filters the maximum image width to be included in a 'srcset' attribute.
- [`mejs_settings`](https://developer.wordpress.org/reference/hooks/mejs_settings/) - Filters the MediaElement configuration settings.
- [`nav_menu_item_args`](https://developer.wordpress.org/reference/hooks/nav_menu_item_args/) - Filters the arguments for a single nav menu item.
- [`nav_menu_item_title`](https://developer.wordpress.org/reference/hooks/nav_menu_item_title/) - Filters a menu item's title.
- [`navigation_markup_template`](https://developer.wordpress.org/reference/hooks/navigation_markup_template/) - Filters the navigation markup template.
- [`notify_moderator`](https://developer.wordpress.org/reference/hooks/notify_moderator/) - Filters whether to send the site moderator email notifications, overriding the site setting.
- [`notify_post_author`](https://developer.wordpress.org/reference/hooks/notify_post_author/) - Filters whether to send the post author new comment notification emails, overriding the site setting.
- [`oembed_default_width`](https://developer.wordpress.org/reference/hooks/oembed_default_width/) - Filters the maxwidth oEmbed parameter.
- [`oembed_discovery_links`](https://developer.wordpress.org/reference/hooks/oembed_discovery_links/) - Filters the oEmbed discovery links HTML.
- [`oembed_endpoint_url`](https://developer.wordpress.org/reference/hooks/oembed_endpoint_url/) - Filters the oEmbed endpoint URL.
- [`oembed_min_max_width`](https://developer.wordpress.org/reference/hooks/oembed_min_max_width/) - Filters the allowed minimum and maximum widths for the oEmbed response.
- [`oembed_request_post_id`](https://developer.wordpress.org/reference/hooks/oembed_request_post_id/) - Filters the determined post ID.
- [`oembed_response_data`](https://developer.wordpress.org/reference/hooks/oembed_response_data/) - Filters the oEmbed response data.
- [`old_slug_redirect_url`](https://developer.wordpress.org/reference/hooks/old_slug_redirect_url/) - Filters the old slug redirect URL.
- [`post_edit_category_parent_dropdown_args`](https://developer.wordpress.org/reference/hooks/post_edit_category_parent_dropdown_args/) - Filters the arguments for the taxonomy parent dropdown on the Post Edit page.
- [`post_embed_url`](https://developer.wordpress.org/reference/hooks/post_embed_url/) - Filters the URL to embed a specific post.
- [`postmeta_form_keys`](https://developer.wordpress.org/reference/hooks/postmeta_form_keys/) - Filters values for the meta key dropdown in the Custom Fields meta box.
- [`pre_delete_post`](https://developer.wordpress.org/reference/hooks/pre_delete_post/) - Filters whether a post deletion should take place.
- [`pre_get_document_title`](https://developer.wordpress.org/reference/hooks/pre_get_document_title/) - Filters the document title before it is generated.
- [`pre_get_lastpostmodified`](https://developer.wordpress.org/reference/hooks/pre_get_lastpostmodified/) - Pre-filter the return value of get_lastpostmodified() before the query is run.
- [`register_post_type_args`](https://developer.wordpress.org/reference/hooks/register_post_type_args/) - Filters the arguments for registering a post type.
- [`register_taxonomy_args`](https://developer.wordpress.org/reference/hooks/register_taxonomy_args/) - Filters the arguments for registering a taxonomy.
- [`respond_link`](https://developer.wordpress.org/reference/hooks/respond_link/) - Filters the respond link when a post has no comments.
- [`rest_authentication_errors`](https://developer.wordpress.org/reference/hooks/rest_authentication_errors/) - Filters REST API authentication errors.
- [`rest_avatar_sizes`](https://developer.wordpress.org/reference/hooks/rest_avatar_sizes/) - Filters the REST avatar sizes.
- [`rest_dispatch_request`](https://developer.wordpress.org/reference/hooks/rest_dispatch_request/) - Filters the REST API dispatch request result.
- [`rest_endpoints`](https://developer.wordpress.org/reference/hooks/rest_endpoints/) - Filters the array of available REST API endpoints.
- [`rest_endpoints_description`](https://developer.wordpress.org/reference/hooks/rest_endpoints_description/) - Filters the publicly-visible data for a single REST API route.
- [`rest_envelope_response`](https://developer.wordpress.org/reference/hooks/rest_envelope_response/) - Filters the enveloped form of a REST API response.
- [`rest_index`](https://developer.wordpress.org/reference/hooks/rest_index/) - Filters the REST API root index data.
- [`rest_jsonp_enabled`](https://developer.wordpress.org/reference/hooks/rest_jsonp_enabled/) - Filters whether JSONP is enabled for the REST API.
- [`rest_namespace_index`](https://developer.wordpress.org/reference/hooks/rest_namespace_index/) - Filters the REST API namespace index data.
- [`rest_post_dispatch`](https://developer.wordpress.org/reference/hooks/rest_post_dispatch/) - Filters the REST API response.
- [`rest_pre_dispatch`](https://developer.wordpress.org/reference/hooks/rest_pre_dispatch/) - Filters the pre-calculated result of a REST API dispatch request.
- [`rest_pre_serve_request`](https://developer.wordpress.org/reference/hooks/rest_pre_serve_request/) - Filters whether the REST API request has already been served.
- [`rest_request_parameter_order`](https://developer.wordpress.org/reference/hooks/rest_request_parameter_order/) - Filters the parameter priority order for a REST API request.
- [`rest_route_data`](https://developer.wordpress.org/reference/hooks/rest_route_data/) - Filters the publicly-visible data for REST API routes.
- [`rest_send_nocache_headers`](https://developer.wordpress.org/reference/hooks/rest_send_nocache_headers/) - Filters whether to send no-cache headers on a REST API request.
- [`rest_url`](https://developer.wordpress.org/reference/hooks/rest_url/) - Filters the REST URL.
- [`rest_url_prefix`](https://developer.wordpress.org/reference/hooks/rest_url_prefix/) - Filters the REST URL prefix.
- [`screen_options_show_submit`](https://developer.wordpress.org/reference/hooks/screen_options_show_submit/) - Filters whether to show the Screen Options submit button.
- [`show_network_active_plugins`](https://developer.wordpress.org/reference/hooks/show_network_active_plugins/) - Filters whether to display network-active plugins alongside plugins active for the current site.
- [`signup_get_available_languages`](https://developer.wordpress.org/reference/hooks/signup_get_available_languages/) - Filters the list of available languages for front-end site sign-ups.
- [`submenu_file`](https://developer.wordpress.org/reference/hooks/submenu_file/) - Filters the file of an admin menu sub-menu item.
- [`taxonomy_labels_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/taxonomy_labels_taxonomy/) - Filters the labels of a specific taxonomy.
- [`the_category_list`](https://developer.wordpress.org/reference/hooks/the_category_list/) - Filters the categories before building the category list.
- [`the_excerpt_embed`](https://developer.wordpress.org/reference/hooks/the_excerpt_embed/) - Filters the post excerpt for the embed template.
- [`update_right_now_text`](https://developer.wordpress.org/reference/hooks/update_right_now_text/) - Filters the text displayed in the 'At a Glance' dashboard widget.
- [`user_profile_picture_description`](https://developer.wordpress.org/reference/hooks/user_profile_picture_description/) - Filters the user profile picture description displayed under the Gravatar.
- [`users_list_table_query_args`](https://developer.wordpress.org/reference/hooks/users_list_table_query_args/) - Filters the query arguments used to retrieve users for the current users list table.
- [`view_mode_post_types`](https://developer.wordpress.org/reference/hooks/view_mode_post_types/) - Filters the post types that have different view mode options.
- [`wp_calculate_image_sizes`](https://developer.wordpress.org/reference/hooks/wp_calculate_image_sizes/) - Filters the output of 'wp_calculate_image_sizes()'.
- [`wp_calculate_image_srcset`](https://developer.wordpress.org/reference/hooks/wp_calculate_image_srcset/) - Filters an image's 'srcset' sources.
- [`wp_dropdown_users_args`](https://developer.wordpress.org/reference/hooks/wp_dropdown_users_args/) - Filters the query arguments for the list of users in the dropdown.
- [`wp_http_ixr_client_headers`](https://developer.wordpress.org/reference/hooks/wp_http_ixr_client_headers/) - Filters the headers collection to be sent to the XML-RPC server.
- [`wp_post_revision_title_expanded`](https://developer.wordpress.org/reference/hooks/wp_post_revision_title_expanded/) - Filters the formatted author and date for a revision.
- [`wp_prepare_revision_for_js`](https://developer.wordpress.org/reference/hooks/wp_prepare_revision_for_js/) - Filters the array of revisions used on the revisions screen.
- [`wp_rest_server_class`](https://developer.wordpress.org/reference/hooks/wp_rest_server_class/) - Filters the REST Server Class.
- [`wp_theme_editor_filetypes`](https://developer.wordpress.org/reference/hooks/wp_theme_editor_filetypes/) - Filters the list of file types allowed for editing in the theme file editor.
- [`xmlrpc_chunk_parsing_size`](https://developer.wordpress.org/reference/hooks/xmlrpc_chunk_parsing_size/) - Filters the chunk size that can be used to parse an XML-RPC response message.

### Changes

- [`default_option_{$option}`](https://developer.wordpress.org/reference/hooks/default_option_option/) - The <code>$option</code> parameter was added.
- [`default_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/default_site_option_option/) - The <code>$option</code> parameter was added.
- [`do_feed_{$feed}`](https://developer.wordpress.org/reference/hooks/do_feed_feed/) - The <code>$feed</code> parameter was added.
- [`editable_slug`](https://developer.wordpress.org/reference/hooks/editable_slug/) - The <code>$tag</code> parameter was added.
- [`embed_oembed_discover`](https://developer.wordpress.org/reference/hooks/embed_oembed_discover/) - The default value changed to true.
- [`get_{$adjacent}_post_join`](https://developer.wordpress.org/reference/hooks/get_adjacent_post_join/) - Added the <code>$taxonomy</code> and <code>$post</code> parameters.
- [`get_{$adjacent}_post_sort`](https://developer.wordpress.org/reference/hooks/get_adjacent_post_sort/) - Added the <code>$post</code> parameter.
- [`get_{$adjacent}_post_where`](https://developer.wordpress.org/reference/hooks/get_adjacent_post_where/) - Added the <code>$taxonomy</code> and <code>$post</code> parameters.
- [`get_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/get_taxonomy/) - <code>$_term</code> is now a <code>WP_Term</code> object.
- [`get_comment_link`](https://developer.wordpress.org/reference/hooks/get_comment_link/) - Added the <code>$cpage</code> parameter.
- [`get_sample_permalink_html`](https://developer.wordpress.org/reference/hooks/get_sample_permalink_html/) - Added <code>$post</code> parameter.
- [`get_term`](https://developer.wordpress.org/reference/hooks/get_term/) - <code>$_term</code> is now a <code>WP_Term</code> object.
- [`get_the_categories`](https://developer.wordpress.org/reference/hooks/get_the_categories/) - Added the <code>$post_id</code> parameter.
- [`get_wp_title_rss`](https://developer.wordpress.org/reference/hooks/get_wp_title_rss/) - The <code>$sep</code> parameter was deprecated and renamed to <code>$deprecated</code>.
- [`hidden_columns`](https://developer.wordpress.org/reference/hooks/hidden_columns/) (4.4.1) - Added the <code>use_defaults</code> parameter.
- [`intermediate_image_sizes_advanced`](https://developer.wordpress.org/reference/hooks/intermediate_image_sizes_advanced/) - Added the <code>$image_meta</code> argument.
- [`lostpassword_post`](https://developer.wordpress.org/reference/hooks/lostpassword_post/) - Added the <code>$errors</code> parameter.
- [`option_{$option}`](https://developer.wordpress.org/reference/hooks/option_option/) - The <code>$option</code> parameter was added.
- [`post_submitbox_misc_actions`](https://developer.wordpress.org/reference/hooks/post_submitbox_misc_actions/) - Added the <code>$post</code> parameter.
- [`pre_add_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_add_site_option_option/) - The <code>$option</code> parameter was added.
- [`pre_delete_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_delete_site_option_option/) - The <code>$option</code> parameter was added.
- [`pre_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_option_option/) - The <code>$option</code> parameter was added.
- [`pre_set_site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_set_site_transient_transient/) - The <code>$transient</code> parameter was added.
- [`pre_set_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_set_transient_transient/) - The <code>$transient</code> parameter was added.
- [`pre_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_site_option_option/) - The <code>$option</code> parameter was added.
- [`pre_site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_site_transient_transient/) - The <code>$transient</code> parameter was added.
- [`pre_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_transient_transient/) - The <code>$transient</code> parameter was added
- [`pre_update_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_update_option_option/) - The <code>$option</code> parameter was added.
- [`pre_update_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_update_site_option_option/) - The <code>$option</code> parameter was added.
- [`restrict_manage_posts`](https://developer.wordpress.org/reference/hooks/restrict_manage_posts/) - The <code>$post_type</code> parameter was added.
- [`retrieve_password_title`](https://developer.wordpress.org/reference/hooks/retrieve_password_title/) - Added the <code>$user_login</code> and <code>$user_data</code> parameters.
- [`set_site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/set_site_transient_transient/) - The <code>$transient</code> parameter was added
- [`set_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/set_transient_transient/) - The <code>$transient</code> parameter was added.
- [`shortcode_atts_{$shortcode}`](https://developer.wordpress.org/reference/hooks/shortcode_atts_shortcode/) - Added the <code>$shortcode</code> parameter.
- [`show_password_fields`](https://developer.wordpress.org/reference/hooks/show_password_fields/) - Now evaluated only in user-edit.php.
- [`site_option_{$option}`](https://developer.wordpress.org/reference/hooks/site_option_option/) - The <code>$option</code> parameter was added.
- [`site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/site_transient_transient/) - The <code>$transient</code> parameter was added.
- [`subdirectory_reserved_names`](https://developer.wordpress.org/reference/hooks/subdirectory_reserved_names/) - 'wp-admin', 'wp-content', 'wp-includes', 'wp-json', and 'embed' were added to the reserved names list.
- [`the_permalink`](https://developer.wordpress.org/reference/hooks/the_permalink/) - Added the <code>$post</code> parameter.
- [`theme_{$post_type}_templates`](https://developer.wordpress.org/reference/hooks/theme_post_type_templates/) - Converted to allow complete control over the <code>$page_templates</code> array.
- [`transient_{$transient}`](https://developer.wordpress.org/reference/hooks/transient_transient/) - The <code>$transient</code> parameter was added
- [`update_option_{$option}`](https://developer.wordpress.org/reference/hooks/update_option_option/) - The <code>$option</code> parameter was added.
- [`upgrader_source_selection`](https://developer.wordpress.org/reference/hooks/upgrader_source_selection/) - The $hook_extra parameter became available.
- [`widget_links_args`](https://developer.wordpress.org/reference/hooks/widget_links_args/) - Added the <code>$instance</code> parameter.
- [`widget_nav_menu_args`](https://developer.wordpress.org/reference/hooks/widget_nav_menu_args/) - Added the <code>$instance</code> parameter.
- [`widget_text`](https://developer.wordpress.org/reference/hooks/widget_text/) - Added the <code>$widget</code> parameter.
- [`wp_dropdown_pages`](https://developer.wordpress.org/reference/hooks/wp_dropdown_pages/) - <code>$parsed_args</code> and <code>$pages</code> added as arguments.
- [`wp_list_pages`](https://developer.wordpress.org/reference/hooks/wp_list_pages/) - <code>$pages</code> added as arguments.
- [`wp_read_image_metadata`](https://developer.wordpress.org/reference/hooks/wp_read_image_metadata/) - The <code>$iptc</code> parameter was added.
- [`wp_title_rss`](https://developer.wordpress.org/reference/hooks/wp_title_rss/) - The <code>$sep</code> parameter was deprecated and renamed to <code>$deprecated</code>.
- [`wpmu_update_blog_options`](https://developer.wordpress.org/reference/hooks/wpmu_update_blog_options/) - Added <code>$id</code> parameter.

## WordPress 4.3

### New Actions

- [`add_user_role`](https://developer.wordpress.org/reference/hooks/add_user_role/) - Fires immediately after the user has been given a new role.
- [`deprecated_constructor_run`](https://developer.wordpress.org/reference/hooks/deprecated_constructor_run/) - Fires when a deprecated constructor is called.
- [`remove_user_role`](https://developer.wordpress.org/reference/hooks/remove_user_role/) - Fires immediately after a role as been removed from a user.
- [`wp_ajax_crop_image_pre_save`](https://developer.wordpress.org/reference/hooks/wp_ajax_crop_image_pre_save/) - Fires before a cropped image is saved.

### New Filters

- [`customize_nav_menu_available_item_types`](https://developer.wordpress.org/reference/hooks/customize_nav_menu_available_item_types/) - Filters the available menu item types.
- [`customize_nav_menu_available_items`](https://developer.wordpress.org/reference/hooks/customize_nav_menu_available_items/) - Filters the available menu items.
- [`deprecated_constructor_trigger_error`](https://developer.wordpress.org/reference/hooks/deprecated_constructor_trigger_error/) - Filters whether to trigger an error for deprecated functions.
- [`edit_comment_misc_actions`](https://developer.wordpress.org/reference/hooks/edit_comment_misc_actions/) - Filters miscellaneous actions for the edit comment form sidebar.
- [`editor_stylesheets`](https://developer.wordpress.org/reference/hooks/editor_stylesheets/) - Filters the array of URLs of stylesheets applied to the editor.
- [`email_change_email`](https://developer.wordpress.org/reference/hooks/email_change_email/) - Filters the contents of the email sent when the user's email is changed.
- [`format_for_editor`](https://developer.wordpress.org/reference/hooks/format_for_editor/) - Filters the text after it is formatted for the editor.
- [`get_default_comment_status`](https://developer.wordpress.org/reference/hooks/get_default_comment_status/) - Filters the default comment status for the given post type.
- [`get_main_network_id`](https://developer.wordpress.org/reference/hooks/get_main_network_id/) - Filters the main network ID.
- [`has_nav_menu`](https://developer.wordpress.org/reference/hooks/has_nav_menu/) - Filters whether a nav menu is assigned to the specified location.
- [`list_table_primary_column`](https://developer.wordpress.org/reference/hooks/list_table_primary_column/) - Filters the name of the primary column for the current list table.
- [`nav_menu_items_{$post_type_name}_recent`](https://developer.wordpress.org/reference/hooks/nav_menu_items_post_type_name_recent/) - Filters the posts displayed in the 'Most Recent' tab of the current post type's menu items meta box.
- [`password_change_email`](https://developer.wordpress.org/reference/hooks/password_change_email/) - Filters the contents of the email sent when the user's password is changed.
- [`password_reset_expiration`](https://developer.wordpress.org/reference/hooks/password_reset_expiration/) - Filters the expiration time of password reset keys.
- [`send_email_change_email`](https://developer.wordpress.org/reference/hooks/send_email_change_email/) - Filters whether to send the email change email.
- [`send_password_change_email`](https://developer.wordpress.org/reference/hooks/send_password_change_email/) - Filters whether to send the password change email.
- [`site_icon_attachment_metadata`](https://developer.wordpress.org/reference/hooks/site_icon_attachment_metadata/) - Filters the site icon attachment metadata.
- [`site_icon_image_sizes`](https://developer.wordpress.org/reference/hooks/site_icon_image_sizes/) - Filters the different dimensions that a site icon is saved in.
- [`site_icon_meta_tags`](https://developer.wordpress.org/reference/hooks/site_icon_meta_tags/) - Filters the site icon meta tags, so plugins can add their own.
- [`upgrader_package_options`](https://developer.wordpress.org/reference/hooks/upgrader_package_options/) - Filters the package options before running an update.
- [`wp_ajax_cropped_attachment_id`](https://developer.wordpress.org/reference/hooks/wp_ajax_cropped_attachment_id/) - Filters the attachment ID for a cropped image.
- [`wp_ajax_cropped_attachment_metadata`](https://developer.wordpress.org/reference/hooks/wp_ajax_cropped_attachment_metadata/) - Filters the cropped image attachment metadata.
- [`wp_generate_tag_cloud_data`](https://developer.wordpress.org/reference/hooks/wp_generate_tag_cloud_data/) - Filters the data used to generate the tag cloud.
- [`wp_get_attachment_image_src`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_image_src/) - Filters the attachment image source result.
- [`wp_get_nav_menu_object`](https://developer.wordpress.org/reference/hooks/wp_get_nav_menu_object/) - Filters the nav_menu term retrieved for wp_get_nav_menu_object().
- [`wp_refresh_nonces`](https://developer.wordpress.org/reference/hooks/wp_refresh_nonces/) - Filters the nonces to send to the New/Edit Post screen.
- [`wp_safe_redirect_fallback`](https://developer.wordpress.org/reference/hooks/wp_safe_redirect_fallback/) - Filters the redirect fallback URL for when the provided redirect is not safe (local).
- [`wp_should_upgrade_global_tables`](https://developer.wordpress.org/reference/hooks/wp_should_upgrade_global_tables/) - Filters if upgrade routines should be run on global tables.
- [`wp_unique_term_slug`](https://developer.wordpress.org/reference/hooks/wp_unique_term_slug/) - Filters the unique term slug.
- [`wp_unique_term_slug_is_bad_slug`](https://developer.wordpress.org/reference/hooks/wp_unique_term_slug_is_bad_slug/) - Filters whether the proposed unique term slug is bad.

### Changes

- [`get_the_author_{$field}`](https://developer.wordpress.org/reference/hooks/get_the_author_field/) - The <code>$original_user_id</code> parameter was added.
- [`get_usernumposts`](https://developer.wordpress.org/reference/hooks/get_usernumposts/) (4.3.1) - Added <code>$public_only</code> argument.
- [`language_attributes`](https://developer.wordpress.org/reference/hooks/language_attributes/) - Added the <code>$doctype</code> parameter.
- [`password_reset_key_expired`](https://developer.wordpress.org/reference/hooks/password_reset_key_expired/) - Previously key hashes were stored without an expiration time.
- [`sanitize_option_{$option}`](https://developer.wordpress.org/reference/hooks/sanitize_option_option/) - Added the <code>$original_value</code> parameter.
- [`style_loader_tag`](https://developer.wordpress.org/reference/hooks/style_loader_tag/) - Introduced the <code>$href</code> parameter.

## WordPress 4.2

### New Actions

- [`parse_comment_query`](https://developer.wordpress.org/reference/hooks/parse_comment_query/) - Fires after the comment query vars have been parsed.
- [`split_shared_term`](https://developer.wordpress.org/reference/hooks/split_shared_term/) - Fires after a previously shared taxonomy term is split into two separate terms.

### New Filters

- [`attachment_url_to_postid`](https://developer.wordpress.org/reference/hooks/attachment_url_to_postid/) - Filters an attachment ID found by URL.
- [`category_css_class`](https://developer.wordpress.org/reference/hooks/category_css_class/) - Filters the list of CSS classes to include with each category in the list.
- [`comment_form_submit_button`](https://developer.wordpress.org/reference/hooks/comment_form_submit_button/) - Filters the submit button for the comment form to display.
- [`comment_form_submit_field`](https://developer.wordpress.org/reference/hooks/comment_form_submit_field/) - Filters the submit field for the comment form to display.
- [`customize_dynamic_setting_args`](https://developer.wordpress.org/reference/hooks/customize_dynamic_setting_args/) - Filters a dynamic setting's constructor args.
- [`customize_dynamic_setting_class`](https://developer.wordpress.org/reference/hooks/customize_dynamic_setting_class/) - Allow non-statically created settings to be constructed with custom WP_Customize_Setting subclass.
- [`customize_refresh_nonces`](https://developer.wordpress.org/reference/hooks/customize_refresh_nonces/) - Filters nonces for Customizer.
- [`customize_save_response`](https://developer.wordpress.org/reference/hooks/customize_save_response/) - Filters response data for a successful customize_save Ajax request.
- [`dashboard_recent_posts_query_args`](https://developer.wordpress.org/reference/hooks/dashboard_recent_posts_query_args/) - Filters the query arguments used for the Recent Posts widget.
- [`disable_months_dropdown`](https://developer.wordpress.org/reference/hooks/disable_months_dropdown/) - Filters whether to remove the 'Months' drop-down from the post list table.
- [`emoji_ext`](https://developer.wordpress.org/reference/hooks/emoji_ext/) - Filters the extension of the emoji png files.
- [`emoji_url`](https://developer.wordpress.org/reference/hooks/emoji_url/) - Filters the URL where emoji png images are hosted.
- [`get_avatar_data`](https://developer.wordpress.org/reference/hooks/get_avatar_data/) - Filters the avatar data.
- [`get_avatar_url`](https://developer.wordpress.org/reference/hooks/get_avatar_url/) - Filters the avatar URL.
- [`get_object_terms`](https://developer.wordpress.org/reference/hooks/get_object_terms/) - Filters the terms for a given object or objects.
- [`logout_redirect`](https://developer.wordpress.org/reference/hooks/logout_redirect/) - Filters the log out redirect URL.
- [`media_embedded_in_content_allowed_types`](https://developer.wordpress.org/reference/hooks/media_embedded_in_content_allowed_types/) - Filters the embedded media types that are allowed to be returned from the content blob.
- [`pre_get_avatar`](https://developer.wordpress.org/reference/hooks/pre_get_avatar/) - Allows the HTML for a user's avatar to be returned early.
- [`pre_get_avatar_data`](https://developer.wordpress.org/reference/hooks/pre_get_avatar_data/) - Filters whether to retrieve the avatar URL early.
- [`pre_get_col_charset`](https://developer.wordpress.org/reference/hooks/pre_get_col_charset/) - Filters the column charset value before the DB is checked.
- [`pre_get_table_charset`](https://developer.wordpress.org/reference/hooks/pre_get_table_charset/) - Filters the table charset value before the DB is checked.
- [`pre_prepare_themes_for_js`](https://developer.wordpress.org/reference/hooks/pre_prepare_themes_for_js/) - Filters theme data before it is prepared for JavaScript.
- [`quick_edit_show_taxonomy`](https://developer.wordpress.org/reference/hooks/quick_edit_show_taxonomy/) - Filters whether the current taxonomy should be shown in the Quick Edit panel.
- [`removable_query_args`](https://developer.wordpress.org/reference/hooks/removable_query_args/) - Filters the list of query variable names to remove.
- [`the_guid`](https://developer.wordpress.org/reference/hooks/the_guid/) - Filters the escaped Global Unique Identifier (guid) of the post.
- [`widget_nav_menu_args`](https://developer.wordpress.org/reference/hooks/widget_nav_menu_args/) - Filters the arguments for the Navigation Menu widget.

### Changes

- [`{$adjacent}_post_link`](https://developer.wordpress.org/reference/hooks/adjacent_post_link/) - Added the <code>$adjacent</code> parameter.
- [`get_avatar`](https://developer.wordpress.org/reference/hooks/get_avatar/) - Added the <code>$args</code> parameter.
- [`login_url`](https://developer.wordpress.org/reference/hooks/login_url/) - The <code>$force_reauth</code> parameter was added.
- [`post_gallery`](https://developer.wordpress.org/reference/hooks/post_gallery/) - The <code>$instance</code> parameter was added.
- [`post_playlist`](https://developer.wordpress.org/reference/hooks/post_playlist/) - The <code>$instance</code> parameter was added.
- [`pre_set_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_set_transient_transient/) - The <code>$expiration</code> parameter was added.
- [`taxonomy_parent_dropdown_args`](https://developer.wordpress.org/reference/hooks/taxonomy_parent_dropdown_args/) - Added <code>$context</code> parameter.

## WordPress 4.1

### New Actions

- [`customize_preview_{$this->type}`](https://developer.wordpress.org/reference/hooks/customize_preview_this-type/) - Fires when the WP_Customize_Setting::preview() method is called for settings not handled as theme_mods or options.
- [`edit_form_before_permalink`](https://developer.wordpress.org/reference/hooks/edit_form_before_permalink/) - Fires before the permalink field in the edit form.
- [`pre_delete_term`](https://developer.wordpress.org/reference/hooks/pre_delete_term/) - Fires when deleting a term, before any modifications are made to posts or terms.
- [`wp_creating_autosave`](https://developer.wordpress.org/reference/hooks/wp_creating_autosave/) - Fires before an autosave is stored.

### New Filters

- [`comment_reply_link_args`](https://developer.wordpress.org/reference/hooks/comment_reply_link_args/) - Filters the comment reply link arguments.
- [`customize_panel_active`](https://developer.wordpress.org/reference/hooks/customize_panel_active/) - Filters response of WP_Customize_Panel::active().
- [`customize_section_active`](https://developer.wordpress.org/reference/hooks/customize_section_active/) - Filters response of WP_Customize_Section::active().
- [`default_page_template_title`](https://developer.wordpress.org/reference/hooks/default_page_template_title/) - Filters the title of the default page template displayed in the drop-down.
- [`get_the_archive_description`](https://developer.wordpress.org/reference/hooks/get_the_archive_description/) - Filters the archive description.
- [`get_the_archive_title`](https://developer.wordpress.org/reference/hooks/get_the_archive_title/) - Filters the archive title.
- [`image_add_caption_text`](https://developer.wordpress.org/reference/hooks/image_add_caption_text/) - Filters the caption text.
- [`meta_query_find_compatible_table_alias`](https://developer.wordpress.org/reference/hooks/meta_query_find_compatible_table_alias/) - Filters the table alias identified as compatible with the current clause.
- [`password_hint`](https://developer.wordpress.org/reference/hooks/password_hint/) - Filters the text describing the site's password complexity policy.
- [`process_text_diff_html`](https://developer.wordpress.org/reference/hooks/process_text_diff_html/) - Contextually filters a diffed line.
- [`revision_text_diff_options`](https://developer.wordpress.org/reference/hooks/revision_text_diff_options/) - Filters revisions text diff options.
- [`script_loader_tag`](https://developer.wordpress.org/reference/hooks/script_loader_tag/) - Filters the HTML script tag of an enqueued script.
- [`wp_constrain_dimensions`](https://developer.wordpress.org/reference/hooks/wp_constrain_dimensions/) - Filters dimensions to constrain down-sampled images to.
- [`wp_get_revision_ui_diff`](https://developer.wordpress.org/reference/hooks/wp_get_revision_ui_diff/) - Filters the fields displayed in the post revision diff UI.
- [`wp_save_post_revision_post_has_changed`](https://developer.wordpress.org/reference/hooks/wp_save_post_revision_post_has_changed/) - Filters whether a post has changed.

### Changes

- [`author_email`](https://developer.wordpress.org/reference/hooks/author_email/) - The <code>$comment_id</code> parameter was added.
- [`comment_author`](https://developer.wordpress.org/reference/hooks/comment_author/) - The <code>$comment_id</code> parameter was added.
- [`comment_email`](https://developer.wordpress.org/reference/hooks/comment_email/) - The <code>$comment</code> parameter was added.
- [`comment_excerpt`](https://developer.wordpress.org/reference/hooks/comment_excerpt/) - The <code>$comment_id</code> parameter was added.
- [`comment_url`](https://developer.wordpress.org/reference/hooks/comment_url/) - The <code>$comment_id</code> parameter was added.
- [`date_query_valid_columns`](https://developer.wordpress.org/reference/hooks/date_query_valid_columns/) - Added 'user_registered' to the default recognized columns.
- [`get_ancestors`](https://developer.wordpress.org/reference/hooks/get_ancestors/) (4.1.1) - Introduced the <code>$resource_type</code> parameter.
- [`get_comment_author_email`](https://developer.wordpress.org/reference/hooks/get_comment_author_email/) - The <code>$comment_id</code> and <code>$comment</code> parameters were added.
- [`get_comment_author_IP`](https://developer.wordpress.org/reference/hooks/get_comment_author_IP/) - The <code>$comment_id</code> and <code>$comment</code> parameters were added.
- [`get_comment_author_link`](https://developer.wordpress.org/reference/hooks/get_comment_author_link/) - The <code>$comment_author</code> and <code>$comment_id</code> parameters were added.
- [`get_comment_author_url`](https://developer.wordpress.org/reference/hooks/get_comment_author_url/) - The <code>$comment_id</code> and <code>$comment</code> parameters were added.
- [`get_comment_author`](https://developer.wordpress.org/reference/hooks/get_comment_author/) - The <code>$comment_id</code> and <code>$comment</code> parameters were added.
- [`get_comment_excerpt`](https://developer.wordpress.org/reference/hooks/get_comment_excerpt/) - The <code>$comment_id</code> and <code>$comment</code> parameters were added.
- [`get_comment_ID`](https://developer.wordpress.org/reference/hooks/get_comment_ID/) - The <code>$comment</code> parameter was added.
- [`get_comment_type`](https://developer.wordpress.org/reference/hooks/get_comment_type/) - The <code>$comment_id</code> and <code>$comment</code> parameters were added.
- [`get_usernumposts`](https://developer.wordpress.org/reference/hooks/get_usernumposts/) - Added <code>$post_type</code> argument.
- [`nav_menu_css_class`](https://developer.wordpress.org/reference/hooks/nav_menu_css_class/) - The <code>$depth</code> parameter was added.
- [`nav_menu_item_id`](https://developer.wordpress.org/reference/hooks/nav_menu_item_id/) - The <code>$depth</code> parameter was added.
- [`nav_menu_link_attributes`](https://developer.wordpress.org/reference/hooks/nav_menu_link_attributes/) - The <code>$depth</code> parameter was added.
- [`retrieve_password_message`](https://developer.wordpress.org/reference/hooks/retrieve_password_message/) - Added <code>$user_login</code> and <code>$user_data</code> parameters.
- [`the_post`](https://developer.wordpress.org/reference/hooks/the_post/) - Introduced <code>$query</code> parameter.
- [`wp_editor_expand`](https://developer.wordpress.org/reference/hooks/wp_editor_expand/) - Added the <code>$post_type</code> parameter.

## WordPress 4.0

### New Actions

- [`auth_cookie_bad_session_token`](https://developer.wordpress.org/reference/hooks/auth_cookie_bad_session_token/) - Fires if a bad session token is encountered.
- [`customize_render_panel`](https://developer.wordpress.org/reference/hooks/customize_render_panel/) - Fires before rendering a Customizer panel.
- [`customize_render_panel_{$this->id}`](https://developer.wordpress.org/reference/hooks/customize_render_panel_this-id/) - Fires before rendering a specific Customizer panel.
- [`delete_user_form`](https://developer.wordpress.org/reference/hooks/delete_user_form/) - Fires at the end of the delete users form prior to the confirm button.
- [`pre_get_users`](https://developer.wordpress.org/reference/hooks/pre_get_users/) - Fires before the WP_User_Query has been parsed.
- [`rss_tag_pre`](https://developer.wordpress.org/reference/hooks/rss_tag_pre/) - Fires between the xml and rss tags in a feed.

### New Filters

- [`async_update_translation`](https://developer.wordpress.org/reference/hooks/async_update_translation/) - Filters whether to asynchronously update translation for core, a plugin, or a theme.
- [`attach_session_information`](https://developer.wordpress.org/reference/hooks/attach_session_information/) - Filters the information attached to the newly created session.
- [`customize_control_active`](https://developer.wordpress.org/reference/hooks/customize_control_active/) - Filters response of WP_Customize_Control::active().
- [`human_time_diff`](https://developer.wordpress.org/reference/hooks/human_time_diff/) - Filters the human-readable difference between two timestamps.
- [`oembed_remote_get_args`](https://developer.wordpress.org/reference/hooks/oembed_remote_get_args/) - Filters oEmbed remote get arguments.
- [`oembed_ttl`](https://developer.wordpress.org/reference/hooks/oembed_ttl/) - Filters the oEmbed TTL value (time to live).
- [`run_wptexturize`](https://developer.wordpress.org/reference/hooks/run_wptexturize/) - Filters whether to skip running wptexturize().
- [`session_token_manager`](https://developer.wordpress.org/reference/hooks/session_token_manager/) - Filters the class name for the session token manager.
- [`term_search_min_chars`](https://developer.wordpress.org/reference/hooks/term_search_min_chars/) - Filters the minimum number of characters required to fire a tag search via Ajax.
- [`translations_api`](https://developer.wordpress.org/reference/hooks/translations_api/) - Allows a plugin to override the WordPress.org Translation Installation API entirely.
- [`translations_api_result`](https://developer.wordpress.org/reference/hooks/translations_api_result/) - Filters the Translation Installation API response results.
- [`wp_editor_expand`](https://developer.wordpress.org/reference/hooks/wp_editor_expand/) - Filters whether to enable the 'expand' functionality in the post editor.
- [`wp_editor_settings`](https://developer.wordpress.org/reference/hooks/wp_editor_settings/) - Filters the wp_editor() settings.
- [`wp_embed_handler_youtube`](https://developer.wordpress.org/reference/hooks/wp_embed_handler_youtube/) - Filters the YouTube embed output.
- [`wp_list_comments_args`](https://developer.wordpress.org/reference/hooks/wp_list_comments_args/) - Filters the arguments used in retrieving the comment list.
- [`wp_spaces_regexp`](https://developer.wordpress.org/reference/hooks/wp_spaces_regexp/) - Filters the regexp for common whitespace characters.
- [`wp_title_parts`](https://developer.wordpress.org/reference/hooks/wp_title_parts/) - Filters the parts of the page title.
- [`wxr_export_skip_commentmeta`](https://developer.wordpress.org/reference/hooks/wxr_export_skip_commentmeta/) - Filters whether to selectively skip comment meta used for WXR exports.
- [`xmlrpc_element_limit`](https://developer.wordpress.org/reference/hooks/xmlrpc_element_limit/) - Filters the number of elements to parse in an XML-RPC response.

### Changes

- [`{$action}_prefilter`](https://developer.wordpress.org/reference/hooks/action_prefilter/) - Converted to a dynamic hook with <code>$action</code>.
- [`auth_cookie`](https://developer.wordpress.org/reference/hooks/auth_cookie/) - The <code>$token</code> parameter was added.
- [`date_formats`](https://developer.wordpress.org/reference/hooks/date_formats/) - Replaced the <code>Y/m/d</code> format with <code>Y-m-d</code> (ISO date standard YYYY-MM-DD).
- [`preview_post_link`](https://developer.wordpress.org/reference/hooks/preview_post_link/) - Added the <code>$post</code> parameter.

## WordPress 3.9

### New Actions

- [`dynamic_sidebar_after`](https://developer.wordpress.org/reference/hooks/dynamic_sidebar_after/) - Fires after widgets are rendered in a dynamic sidebar.
- [`dynamic_sidebar_before`](https://developer.wordpress.org/reference/hooks/dynamic_sidebar_before/) - Fires before widgets are rendered in a dynamic sidebar.
- [`ms_site_not_found`](https://developer.wordpress.org/reference/hooks/ms_site_not_found/) - Fires when a network can be determined but a site cannot.
- [`resetpass_form`](https://developer.wordpress.org/reference/hooks/resetpass_form/) - Fires following the 'Strength indicator' meter in the user password reset form.
- [`wp_enqueue_editor`](https://developer.wordpress.org/reference/hooks/wp_enqueue_editor/) - Fires when scripts and styles are enqueued for the editor.
- [`wp_install`](https://developer.wordpress.org/reference/hooks/wp_install/) - Fires after a site is fully installed.
- [`wp_maybe_auto_update`](https://developer.wordpress.org/reference/hooks/wp_maybe_auto_update/) - Fires during wp_cron, starting the auto-update process.
- [`wp_playlist_scripts`](https://developer.wordpress.org/reference/hooks/wp_playlist_scripts/) - Prints and enqueues playlist scripts, styles, and JavaScript templates.
- [`wp_tiny_mce_init`](https://developer.wordpress.org/reference/hooks/wp_tiny_mce_init/) - Fires after tinymce.js is loaded, but before any TinyMCE editor instances are created.
- [`wp_upgrade`](https://developer.wordpress.org/reference/hooks/wp_upgrade/) - Fires after a site is fully upgraded.

### New Filters

- [`attachment_thumbnail_args`](https://developer.wordpress.org/reference/hooks/attachment_thumbnail_args/) - Filters the parameters for the attachment thumbnail creation.
- [`customizer_widgets_section_args`](https://developer.wordpress.org/reference/hooks/customizer_widgets_section_args/) - Filters Customizer widget section arguments for a given sidebar.
- [`determine_current_user`](https://developer.wordpress.org/reference/hooks/determine_current_user/) - Filters the current user.
- [`dynamic_sidebar_has_widgets`](https://developer.wordpress.org/reference/hooks/dynamic_sidebar_has_widgets/) - Filters whether a sidebar has widgets.
- [`incompatible_sql_modes`](https://developer.wordpress.org/reference/hooks/incompatible_sql_modes/) - Filters the list of incompatible SQL modes to exclude.
- [`is_active_sidebar`](https://developer.wordpress.org/reference/hooks/is_active_sidebar/) - Filters whether a dynamic sidebar is considered "active".
- [`is_wide_widget_in_customizer`](https://developer.wordpress.org/reference/hooks/is_wide_widget_in_customizer/) - Filters whether the given widget is considered "wide".
- [`network_by_path_segments_count`](https://developer.wordpress.org/reference/hooks/network_by_path_segments_count/) - Filters the number of path segments to consider when searching for a site.
- [`post_playlist`](https://developer.wordpress.org/reference/hooks/post_playlist/) - Filters the playlist output.
- [`pre_get_network_by_path`](https://developer.wordpress.org/reference/hooks/pre_get_network_by_path/) - Determines a network by its domain and path.
- [`pre_get_site_by_path`](https://developer.wordpress.org/reference/hooks/pre_get_site_by_path/) - Determines a site by its domain and path.
- [`pre_set_theme_mod_{$name}`](https://developer.wordpress.org/reference/hooks/pre_set_theme_mod_name/) - Filters the theme modification, or 'theme_mod', value on save.
- [`pre_update_option`](https://developer.wordpress.org/reference/hooks/pre_update_option/) - Filters an option before its value is (maybe) serialized and updated.
- [`pre_wp_nav_menu`](https://developer.wordpress.org/reference/hooks/pre_wp_nav_menu/) - Filters whether to short-circuit the wp_nav_menu() output.
- [`site_by_path_segments_count`](https://developer.wordpress.org/reference/hooks/site_by_path_segments_count/) - Filters the number of path segments to consider when searching for a site.
- [`theme_{$post_type}_templates`](https://developer.wordpress.org/reference/hooks/theme_post_type_templates/) - Filters list of page templates for a theme.
- [`widget_customizer_setting_args`](https://developer.wordpress.org/reference/hooks/widget_customizer_setting_args/) - Filters the common arguments supplied when constructing a Customizer setting.
- [`wp_get_attachment_id3_keys`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_id3_keys/) - Filters the editable list of keys to look up data from an attachment's metadata.
- [`wp_header_image_attachment_metadata`](https://developer.wordpress.org/reference/hooks/wp_header_image_attachment_metadata/) - Filters the header image attachment metadata.
- [`wp_insert_attachment_data`](https://developer.wordpress.org/reference/hooks/wp_insert_attachment_data/) - Filters attachment post data before it is updated in or added to the database.
- [`wp_mce_translation`](https://developer.wordpress.org/reference/hooks/wp_mce_translation/) - Filters translated strings prepared for TinyMCE.

### Changes

_No changes in this version._

## WordPress 3.8

### New Actions

- [`automatic_updates_complete`](https://developer.wordpress.org/reference/hooks/automatic_updates_complete/) - Fires after all automatic updates have run.

### New Filters

- [`automatic_updates_debug_email`](https://developer.wordpress.org/reference/hooks/automatic_updates_debug_email/) - Filters the debug email that can be sent following an automatic background core update.
- [`comment_notification_notify_author`](https://developer.wordpress.org/reference/hooks/comment_notification_notify_author/) - Filters whether to notify comment authors of their comments on their own posts.
- [`dashboard_glance_items`](https://developer.wordpress.org/reference/hooks/dashboard_glance_items/) - Filters the array of extra elements to list in the 'At a Glance' dashboard widget.
- [`wp_prepare_themes_for_js`](https://developer.wordpress.org/reference/hooks/wp_prepare_themes_for_js/) - Filters the themes prepared for JavaScript, for themes.php.

### Changes

- [`admin_color_scheme_picker`](https://developer.wordpress.org/reference/hooks/admin_color_scheme_picker/) (3.8.1) - Added <code>$user_id</code> parameter.

## WordPress 3.7

### New Actions

- [`edit_form_top`](https://developer.wordpress.org/reference/hooks/edit_form_top/) - Fires at the beginning of the edit form.
- [`parse_tax_query`](https://developer.wordpress.org/reference/hooks/parse_tax_query/) - Fires after taxonomy-related query vars have been parsed.
- [`save_post_{$post->post_type}`](https://developer.wordpress.org/reference/hooks/save_post_post-post_type/) - Fires once a post has been saved.
- [`user_new_form`](https://developer.wordpress.org/reference/hooks/user_new_form/) - Fires at the end of the new user form.
- [`{$taxonomy}_term_edit_form_tag`](https://developer.wordpress.org/reference/hooks/taxonomy_term_edit_form_tag/) - Fires inside the Edit Term form tag.
- [`{$taxonomy}_term_new_form_tag`](https://developer.wordpress.org/reference/hooks/taxonomy_term_new_form_tag/) - Fires inside the Add Tag form tag.

### New Filters

- [`ajax_query_attachments_args`](https://developer.wordpress.org/reference/hooks/ajax_query_attachments_args/) - Filters the arguments passed to WP_Query during an Ajax call for querying attachments.
- [`allow_dev_auto_core_updates`](https://developer.wordpress.org/reference/hooks/allow_dev_auto_core_updates/) - Filters whether to enable automatic core updates for development versions.
- [`allow_major_auto_core_updates`](https://developer.wordpress.org/reference/hooks/allow_major_auto_core_updates/) - Filters whether to enable major automatic core updates.
- [`allow_minor_auto_core_updates`](https://developer.wordpress.org/reference/hooks/allow_minor_auto_core_updates/) - Filters whether to enable minor automatic core updates.
- [`audio_submitbox_misc_sections`](https://developer.wordpress.org/reference/hooks/audio_submitbox_misc_sections/) - Filters the audio attachment metadata fields to be shown in the publish meta box.
- [`auto_core_update_email`](https://developer.wordpress.org/reference/hooks/auto_core_update_email/) - Filters the email sent following an automatic background core update.
- [`auto_core_update_send_email`](https://developer.wordpress.org/reference/hooks/auto_core_update_send_email/) - Filters whether to send an email following an automatic background core update.
- [`auto_update_{$type}`](https://developer.wordpress.org/reference/hooks/auto_update_type/) - Filters whether to automatically update core, a plugin, a theme, or a language.
- [`automatic_updater_disabled`](https://developer.wordpress.org/reference/hooks/automatic_updater_disabled/) - Filters whether to entirely disable background updates.
- [`automatic_updates_is_vcs_checkout`](https://developer.wordpress.org/reference/hooks/automatic_updates_is_vcs_checkout/) - Filters whether the automatic updater should consider a filesystem location to be potentially managed by a version control system.
- [`automatic_updates_send_debug_email`](https://developer.wordpress.org/reference/hooks/automatic_updates_send_debug_email/) - Filters whether to send a debugging email for each automatic background update.
- [`bulk_post_updated_messages`](https://developer.wordpress.org/reference/hooks/bulk_post_updated_messages/) - Filters the bulk action updated messages.
- [`check_is_user_spammed`](https://developer.wordpress.org/reference/hooks/check_is_user_spammed/) - Filters whether the user has been marked as a spammer.
- [`comment_moderation_recipients`](https://developer.wordpress.org/reference/hooks/comment_moderation_recipients/) - Filters the list of recipients for comment moderation emails.
- [`comment_notification_recipients`](https://developer.wordpress.org/reference/hooks/comment_notification_recipients/) - Filters the list of email addresses to receive a comment notification.
- [`date_query_valid_columns`](https://developer.wordpress.org/reference/hooks/date_query_valid_columns/) - Filters the list of valid date query columns.
- [`enable_live_network_counts`](https://developer.wordpress.org/reference/hooks/enable_live_network_counts/) - Filters whether to update network site or user counts when a new site is created.
- [`flush_rewrite_rules_hard`](https://developer.wordpress.org/reference/hooks/flush_rewrite_rules_hard/) - Filters whether a "hard" rewrite rule flush should be performed when requested.
- [`get_date_sql`](https://developer.wordpress.org/reference/hooks/get_date_sql/) - Filters the date query WHERE clause.
- [`get_space_allowed`](https://developer.wordpress.org/reference/hooks/get_space_allowed/) - Filters the upload quota for the current site.
- [`got_url_rewrite`](https://developer.wordpress.org/reference/hooks/got_url_rewrite/) - Filters whether URL rewriting is available.
- [`img_caption_shortcode_width`](https://developer.wordpress.org/reference/hooks/img_caption_shortcode_width/) - Filters the width of an image's caption.
- [`install_plugins_table_api_args_{$tab}`](https://developer.wordpress.org/reference/hooks/install_plugins_table_api_args_tab/) - Filters API request arguments for each Add Plugins screen tab.
- [`install_themes_table_api_args_{$tab}`](https://developer.wordpress.org/reference/hooks/install_themes_table_api_args_tab/) - Filters API request arguments for each Install Themes screen tab.
- [`media_submitbox_misc_sections`](https://developer.wordpress.org/reference/hooks/media_submitbox_misc_sections/) - Filters the audio and video metadata fields to be shown in the publish meta box.
- [`months_dropdown_results`](https://developer.wordpress.org/reference/hooks/months_dropdown_results/) - Filters the 'Months' drop-down results.
- [`password_reset_key_expired`](https://developer.wordpress.org/reference/hooks/password_reset_key_expired/) - Filters the return value of check_password_reset_key() when an old-style key or an expired key is used.
- [`plugins_update_check_locales`](https://developer.wordpress.org/reference/hooks/plugins_update_check_locales/) - Filters the locales requested for plugin translations.
- [`populate_network_meta`](https://developer.wordpress.org/reference/hooks/populate_network_meta/) - Filters meta for a network on creation.
- [`post_password_expires`](https://developer.wordpress.org/reference/hooks/post_password_expires/) - Filters the life span of the post password cookie.
- [`posts_search_orderby`](https://developer.wordpress.org/reference/hooks/posts_search_orderby/) - Filters the ORDER BY used when ordering search results.
- [`send_core_update_notification_email`](https://developer.wordpress.org/reference/hooks/send_core_update_notification_email/) - Filters whether to notify the site administrator of a new core update.
- [`taxonomy_parent_dropdown_args`](https://developer.wordpress.org/reference/hooks/taxonomy_parent_dropdown_args/) - Filters the taxonomy parent drop-down on the Edit Term page.
- [`term_updated_messages`](https://developer.wordpress.org/reference/hooks/term_updated_messages/) - Filters the messages displayed when a tag is updated.
- [`themes_update_check_locales`](https://developer.wordpress.org/reference/hooks/themes_update_check_locales/) - Filters the locales requested for theme translations.
- [`update_translations_complete_actions`](https://developer.wordpress.org/reference/hooks/update_translations_complete_actions/) - Filters the list of action links available following a translations update.
- [`upgrader_pre_download`](https://developer.wordpress.org/reference/hooks/upgrader_pre_download/) - Filters whether to return the package.
- [`wp_count_attachments`](https://developer.wordpress.org/reference/hooks/wp_count_attachments/) - Filters the attachment counts by mime type.
- [`wp_count_posts`](https://developer.wordpress.org/reference/hooks/wp_count_posts/) - Filters the post counts by status for the current post type.
- [`wp_link_query`](https://developer.wordpress.org/reference/hooks/wp_link_query/) - Filters the link query results.
- [`wp_link_query_args`](https://developer.wordpress.org/reference/hooks/wp_link_query_args/) - Filters the link query arguments.
- [`wp_search_stopwords`](https://developer.wordpress.org/reference/hooks/wp_search_stopwords/) - Filters stopwords used when parsing search terms.

### Changes

- [`password_reset_key_expired`](https://developer.wordpress.org/reference/hooks/password_reset_key_expired/) - Previously plain-text keys were stored in the database.
- [`upgrader_process_complete`](https://developer.wordpress.org/reference/hooks/upgrader_process_complete/) - Added to WP_Upgrader::run().
- [`user_has_cap`](https://developer.wordpress.org/reference/hooks/user_has_cap/) - Added the <code>$user</code> parameter.

## WordPress 3.6

### New Actions

- [`after_menu_locations_table`](https://developer.wordpress.org/reference/hooks/after_menu_locations_table/) - Fires after the menu locations table is displayed.
- [`customize_save_after`](https://developer.wordpress.org/reference/hooks/customize_save_after/) - Fires after Customize settings have been saved.
- [`heartbeat_nopriv_tick`](https://developer.wordpress.org/reference/hooks/heartbeat_nopriv_tick/) - Fires when Heartbeat ticks in no-privilege environments.
- [`heartbeat_tick`](https://developer.wordpress.org/reference/hooks/heartbeat_tick/) - Fires when Heartbeat ticks in logged-in environments.
- [`post_lock_lost_dialog`](https://developer.wordpress.org/reference/hooks/post_lock_lost_dialog/) - Fires inside the dialog displayed when a user has lost the post lock.
- [`post_locked_dialog`](https://developer.wordpress.org/reference/hooks/post_locked_dialog/) - Fires inside the post locked dialog before the buttons are displayed.
- [`upgrader_process_complete`](https://developer.wordpress.org/reference/hooks/upgrader_process_complete/) - Fires when the upgrader process is complete.

### New Filters

- [`_wp_post_revision_field_{$field}`](https://developer.wordpress.org/reference/hooks/_wp_post_revision_field_field/) - Contextually filter a post revision field.
- [`comment_link`](https://developer.wordpress.org/reference/hooks/comment_link/) - Filters the current comment's permalink.
- [`comments_link_feed`](https://developer.wordpress.org/reference/hooks/comments_link_feed/) - Filters the comments permalink for the current post.
- [`get_attached_media`](https://developer.wordpress.org/reference/hooks/get_attached_media/) - Filters the list of media attached to the given post.
- [`get_attached_media_args`](https://developer.wordpress.org/reference/hooks/get_attached_media_args/) - Filters arguments used to retrieve media attached to the given post.
- [`get_comments_link`](https://developer.wordpress.org/reference/hooks/get_comments_link/) - Filters the returned post comments permalink.
- [`get_post_galleries`](https://developer.wordpress.org/reference/hooks/get_post_galleries/) - Filters the list of all found galleries in the given post.
- [`get_post_gallery`](https://developer.wordpress.org/reference/hooks/get_post_gallery/) - Filters the first-found post gallery.
- [`heartbeat_nopriv_received`](https://developer.wordpress.org/reference/hooks/heartbeat_nopriv_received/) - Filters Heartbeat Ajax response in no-privilege environments.
- [`heartbeat_nopriv_send`](https://developer.wordpress.org/reference/hooks/heartbeat_nopriv_send/) - Filters Heartbeat Ajax response in no-privilege environments when no data is passed.
- [`heartbeat_received`](https://developer.wordpress.org/reference/hooks/heartbeat_received/) - Filters the Heartbeat response received.
- [`heartbeat_send`](https://developer.wordpress.org/reference/hooks/heartbeat_send/) - Filters the Heartbeat response sent.
- [`heartbeat_settings`](https://developer.wordpress.org/reference/hooks/heartbeat_settings/) - Filters the Heartbeat settings.
- [`http_request_host_is_external`](https://developer.wordpress.org/reference/hooks/http_request_host_is_external/) - Checks if HTTP request is external or not.
- [`http_request_reject_unsafe_urls`](https://developer.wordpress.org/reference/hooks/http_request_reject_unsafe_urls/) - Filters whether to pass URLs through wp_http_validate_url() in an HTTP request.
- [`nav_menu_link_attributes`](https://developer.wordpress.org/reference/hooks/nav_menu_link_attributes/) - Filters the HTML attributes applied to a menu item's anchor element.
- [`override_post_lock`](https://developer.wordpress.org/reference/hooks/override_post_lock/) - Filters whether to allow the post lock to be overridden.
- [`pingback_ping_source_uri`](https://developer.wordpress.org/reference/hooks/pingback_ping_source_uri/) - Filters the pingback source URI.
- [`register_url`](https://developer.wordpress.org/reference/hooks/register_url/) - Filters the user registration URL.
- [`search_form_format`](https://developer.wordpress.org/reference/hooks/search_form_format/) - Filters the HTML format of the search form.
- [`self_link`](https://developer.wordpress.org/reference/hooks/self_link/) - Filters the current feed URL.
- [`shortcode_atts_{$shortcode}`](https://developer.wordpress.org/reference/hooks/shortcode_atts_shortcode/) - Filters shortcode attributes.
- [`show_post_locked_dialog`](https://developer.wordpress.org/reference/hooks/show_post_locked_dialog/) - Filters whether to show the post locked dialog.
- [`user_search_columns`](https://developer.wordpress.org/reference/hooks/user_search_columns/) - Filters the columns to search in a WP_User_Query search.
- [`widget_meta_poweredby`](https://developer.wordpress.org/reference/hooks/widget_meta_poweredby/) - Filters the "WordPress.org" list item HTML in the Meta widget.
- [`wp_audio_embed_handler`](https://developer.wordpress.org/reference/hooks/wp_audio_embed_handler/) - Filters the audio embed handler callback.
- [`wp_audio_extensions`](https://developer.wordpress.org/reference/hooks/wp_audio_extensions/) - Filters the list of supported audio formats.
- [`wp_audio_shortcode`](https://developer.wordpress.org/reference/hooks/wp_audio_shortcode/) - Filters the audio shortcode output.
- [`wp_audio_shortcode_class`](https://developer.wordpress.org/reference/hooks/wp_audio_shortcode_class/) - Filters the class attribute for the audio shortcode output container.
- [`wp_audio_shortcode_library`](https://developer.wordpress.org/reference/hooks/wp_audio_shortcode_library/) - Filters the media library used for the audio shortcode.
- [`wp_audio_shortcode_override`](https://developer.wordpress.org/reference/hooks/wp_audio_shortcode_override/) - Filters the default audio shortcode output.
- [`wp_auth_check_load`](https://developer.wordpress.org/reference/hooks/wp_auth_check_load/) - Filters whether to load the authentication check.
- [`wp_auth_check_same_domain`](https://developer.wordpress.org/reference/hooks/wp_auth_check_same_domain/) - Filters whether the authentication check originated at the same domain.
- [`wp_embed_handler_audio`](https://developer.wordpress.org/reference/hooks/wp_embed_handler_audio/) - Filters the audio embed output.
- [`wp_embed_handler_video`](https://developer.wordpress.org/reference/hooks/wp_embed_handler_video/) - Filters the video embed output.
- [`wp_http_accept_encoding`](https://developer.wordpress.org/reference/hooks/wp_http_accept_encoding/) - Filters the allowed encoding types.
- [`wp_link_pages`](https://developer.wordpress.org/reference/hooks/wp_link_pages/) - Filters the HTML output of page links for paginated posts.
- [`wp_link_pages_link`](https://developer.wordpress.org/reference/hooks/wp_link_pages_link/) - Filters the HTML output of individual page number links.
- [`wp_login_errors`](https://developer.wordpress.org/reference/hooks/wp_login_errors/) - Filters the login page errors.
- [`wp_mediaelement_fallback`](https://developer.wordpress.org/reference/hooks/wp_mediaelement_fallback/) - Filters the MediaElement fallback output for no-JS.
- [`wp_nav_locations_listed_per_menu`](https://developer.wordpress.org/reference/hooks/wp_nav_locations_listed_per_menu/) - Filters the number of locations listed per menu in the drop-down select.
- [`wp_revisions_to_keep`](https://developer.wordpress.org/reference/hooks/wp_revisions_to_keep/) - Filters the number of revisions to save for the given post.
- [`wp_save_post_revision_check_for_changes`](https://developer.wordpress.org/reference/hooks/wp_save_post_revision_check_for_changes/) - Filters whether the post has changed since the latest revision.
- [`wp_video_embed_handler`](https://developer.wordpress.org/reference/hooks/wp_video_embed_handler/) - Filters the video embed handler callback.
- [`wp_video_extensions`](https://developer.wordpress.org/reference/hooks/wp_video_extensions/) - Filters the list of supported video formats.
- [`wp_video_shortcode`](https://developer.wordpress.org/reference/hooks/wp_video_shortcode/) - Filters the output of the video shortcode.
- [`wp_video_shortcode_class`](https://developer.wordpress.org/reference/hooks/wp_video_shortcode_class/) - Filters the class attribute for the video shortcode output container.
- [`wp_video_shortcode_library`](https://developer.wordpress.org/reference/hooks/wp_video_shortcode_library/) - Filters the media library used for the video shortcode.
- [`wp_video_shortcode_override`](https://developer.wordpress.org/reference/hooks/wp_video_shortcode_override/) - Filters the default video shortcode output.

### Changes

- [`display_post_states`](https://developer.wordpress.org/reference/hooks/display_post_states/) - Added the <code>$post</code> parameter.
- [`set_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/set_transient_transient/) - The <code>$value</code> and <code>$expiration</code> parameters were added.
- [`set_user_role`](https://developer.wordpress.org/reference/hooks/set_user_role/) - Added $old_roles to include an array of the user's previous roles.

## WordPress 3.5

### New Actions

- [`after_theme_row_{$stylesheet}`](https://developer.wordpress.org/reference/hooks/after_theme_row_stylesheet/) - Fires after each specific row in the Multisite themes list table.
- [`attachment_submitbox_misc_actions`](https://developer.wordpress.org/reference/hooks/attachment_submitbox_misc_actions/) - Fires after the 'Uploaded on' section of the Save meta box in the attachment editing screen.
- [`edit_form_after_editor`](https://developer.wordpress.org/reference/hooks/edit_form_after_editor/) - Fires after the content editor.
- [`edit_form_after_title`](https://developer.wordpress.org/reference/hooks/edit_form_after_title/) - Fires after the title field.
- [`export_filters`](https://developer.wordpress.org/reference/hooks/export_filters/) - Fires at the end of the export filters form.
- [`load-importer-{$importer}`](https://developer.wordpress.org/reference/hooks/load-importer-importer/) - Fires before an importer screen is loaded.
- [`make_delete_blog`](https://developer.wordpress.org/reference/hooks/make_delete_blog/) - Fires when the 'deleted' status is added to a site.
- [`make_undelete_blog`](https://developer.wordpress.org/reference/hooks/make_undelete_blog/) - Fires when the 'deleted' status is removed from a site.
- [`print_media_templates`](https://developer.wordpress.org/reference/hooks/print_media_templates/) - Fires when the custom Backbone media templates are printed.
- [`restrict_manage_comments`](https://developer.wordpress.org/reference/hooks/restrict_manage_comments/) - Fires just before the Filter submit button for comment types.
- [`restrict_manage_users`](https://developer.wordpress.org/reference/hooks/restrict_manage_users/) - Fires just before the closing div containing the bulk role-change controls in the Users list table.
- [`upload_ui_over_quota`](https://developer.wordpress.org/reference/hooks/upload_ui_over_quota/) - Fires when an upload will exceed the defined upload space quota for a network site.
- [`validate_password_reset`](https://developer.wordpress.org/reference/hooks/validate_password_reset/) - Fires before the password reset procedure is validated.
- [`welcome_panel`](https://developer.wordpress.org/reference/hooks/welcome_panel/) - Fires when adding content to the welcome panel on the admin dashboard.
- [`wp_enqueue_media`](https://developer.wordpress.org/reference/hooks/wp_enqueue_media/) - Fires at the conclusion of wp_enqueue_media().
- [`xmlrpc_rsd_apis`](https://developer.wordpress.org/reference/hooks/xmlrpc_rsd_apis/) - Fires when adding APIs to the Really Simple Discovery (RSD) endpoint.

### New Filters

- [`blog_option_{$option}`](https://developer.wordpress.org/reference/hooks/blog_option_option/) - Filters a blog option value.
- [`cron_request`](https://developer.wordpress.org/reference/hooks/cron_request/) - Filters the cron request arguments.
- [`do_parse_request`](https://developer.wordpress.org/reference/hooks/do_parse_request/) - Filters whether to parse the request.
- [`domain_exists`](https://developer.wordpress.org/reference/hooks/domain_exists/) - Filters whether a site name is taken.
- [`exit_on_http_head`](https://developer.wordpress.org/reference/hooks/exit_on_http_head/) - Filters whether to allow 'HEAD' requests to generate content.
- [`export_args`](https://developer.wordpress.org/reference/hooks/export_args/) - Filters the export args.
- [`get_edit_user_link`](https://developer.wordpress.org/reference/hooks/get_edit_user_link/) - Filters the user edit link.
- [`image_editor_default_mime_type`](https://developer.wordpress.org/reference/hooks/image_editor_default_mime_type/) - Filters default mime type prior to getting the file extension.
- [`image_editor_save_pre`](https://developer.wordpress.org/reference/hooks/image_editor_save_pre/) - Filters the WP_Image_Editor instance for the image to be streamed to the browser.
- [`image_memory_limit`](https://developer.wordpress.org/reference/hooks/image_memory_limit/) - Filters the memory limit allocated for image manipulation.
- [`is_email_address_unsafe`](https://developer.wordpress.org/reference/hooks/is_email_address_unsafe/) - Filters whether an email address is unsafe.
- [`login_body_class`](https://developer.wordpress.org/reference/hooks/login_body_class/) - Filters the login page body classes.
- [`manage_taxonomies_for_attachment_columns`](https://developer.wordpress.org/reference/hooks/manage_taxonomies_for_attachment_columns/) - Filters the taxonomy columns for attachments in the Media list table.
- [`manage_taxonomies_for_{$post_type}_columns`](https://developer.wordpress.org/reference/hooks/manage_taxonomies_for_post_type_columns/) - Filters the taxonomy columns in the Posts list table.
- [`media_view_settings`](https://developer.wordpress.org/reference/hooks/media_view_settings/) - Filters the media view settings.
- [`media_view_strings`](https://developer.wordpress.org/reference/hooks/media_view_strings/) - Filters the media view strings.
- [`mime_types`](https://developer.wordpress.org/reference/hooks/mime_types/) - Filters the list of mime types and file extensions.
- [`nonce_user_logged_out`](https://developer.wordpress.org/reference/hooks/nonce_user_logged_out/) - Filters whether the user who generated the nonce is logged out.
- [`post_link_category`](https://developer.wordpress.org/reference/hooks/post_link_category/) - Filters the category that gets used in the %category% permalink token.
- [`post_type_labels_{$post_type}`](https://developer.wordpress.org/reference/hooks/post_type_labels_post_type/) - Filters the labels of a specific post type.
- [`pre_get_space_used`](https://developer.wordpress.org/reference/hooks/pre_get_space_used/) - Filters the amount of storage space used by the current site, in megabytes.
- [`pre_http_send_through_proxy`](https://developer.wordpress.org/reference/hooks/pre_http_send_through_proxy/) - Filters whether to preempt sending the request through the proxy.
- [`wp_checkdate`](https://developer.wordpress.org/reference/hooks/wp_checkdate/) - Filters whether the given date is valid for the Gregorian calendar.
- [`wp_editor_set_quality`](https://developer.wordpress.org/reference/hooks/wp_editor_set_quality/) - Filters the default image compression quality setting.
- [`wp_get_update_data`](https://developer.wordpress.org/reference/hooks/wp_get_update_data/) - Filters the returned array of update data for plugins, themes, and WordPress core.
- [`wp_image_editor_before_change`](https://developer.wordpress.org/reference/hooks/wp_image_editor_before_change/) - Filters the WP_Image_Editor instance before applying changes to the image.
- [`wp_image_editors`](https://developer.wordpress.org/reference/hooks/wp_image_editors/) - Filters the list of image editing library classes.
- [`wp_kses_allowed_html`](https://developer.wordpress.org/reference/hooks/wp_kses_allowed_html/) - Filters the HTML tags that are allowed for a given context.
- [`wp_prepare_attachment_for_js`](https://developer.wordpress.org/reference/hooks/wp_prepare_attachment_for_js/) - Filters the attachment data prepared for JavaScript.
- [`wp_save_image_editor_file`](https://developer.wordpress.org/reference/hooks/wp_save_image_editor_file/) - Filters whether to skip saving the image file.
- [`xmlrpc_default_revision_fields`](https://developer.wordpress.org/reference/hooks/xmlrpc_default_revision_fields/) - Filters the default revision query fields used by the given XML-RPC method.
- [`xmlrpc_default_user_fields`](https://developer.wordpress.org/reference/hooks/xmlrpc_default_user_fields/) - Filters the default user query fields used by the given XML-RPC method.
- [`xmlrpc_enabled`](https://developer.wordpress.org/reference/hooks/xmlrpc_enabled/) - Filters whether XML-RPC methods requiring authentication are enabled.
- [`xmlrpc_login_error`](https://developer.wordpress.org/reference/hooks/xmlrpc_login_error/) - Filters the XML-RPC user login error message.
- [`xmlrpc_pingback_error`](https://developer.wordpress.org/reference/hooks/xmlrpc_pingback_error/) (3.5.1) - Filters the XML-RPC pingback error return.
- [`xmlrpc_prepare_user`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_user/) - Filters XML-RPC-prepared data for the given user.
- [`{$adjacent}_image_link`](https://developer.wordpress.org/reference/hooks/adjacent_image_link/) - Filters the adjacent image link.

### Changes

- [`admin_post_thumbnail_html`](https://developer.wordpress.org/reference/hooks/admin_post_thumbnail_html/) - Added the <code>$post_id</code> parameter.

## WordPress 3.4

### New Actions

- [`customize_controls_enqueue_scripts`](https://developer.wordpress.org/reference/hooks/customize_controls_enqueue_scripts/) - Fires when enqueuing Customizer control scripts.
- [`customize_controls_init`](https://developer.wordpress.org/reference/hooks/customize_controls_init/) - Fires when Customizer controls are initialized, before scripts are enqueued.
- [`customize_controls_print_footer_scripts`](https://developer.wordpress.org/reference/hooks/customize_controls_print_footer_scripts/) - Prints templates, control scripts, and settings in the footer.
- [`customize_controls_print_scripts`](https://developer.wordpress.org/reference/hooks/customize_controls_print_scripts/) - Fires when Customizer control scripts are printed.
- [`customize_controls_print_styles`](https://developer.wordpress.org/reference/hooks/customize_controls_print_styles/) - Fires when Customizer control styles are printed.
- [`customize_preview_init`](https://developer.wordpress.org/reference/hooks/customize_preview_init/) - Fires once the Customizer preview has initialized and JavaScript settings have been printed.
- [`customize_preview_{$this->id}`](https://developer.wordpress.org/reference/hooks/customize_preview_this-id/) - Fires when the WP_Customize_Setting::preview() method is called for settings not handled as theme_mods or options.
- [`customize_register`](https://developer.wordpress.org/reference/hooks/customize_register/) - Fires once WordPress has loaded, allowing scripts and styles to be initialized.
- [`customize_render_control`](https://developer.wordpress.org/reference/hooks/customize_render_control/) - Fires just before the current Customizer control is rendered.
- [`customize_render_control_{$this->id}`](https://developer.wordpress.org/reference/hooks/customize_render_control_this-id/) - Fires just before a specific Customizer control is rendered.
- [`customize_render_section`](https://developer.wordpress.org/reference/hooks/customize_render_section/) - Fires before rendering a Customizer section.
- [`customize_render_section_{$this->id}`](https://developer.wordpress.org/reference/hooks/customize_render_section_this-id/) - Fires before rendering a specific Customizer section.
- [`customize_save`](https://developer.wordpress.org/reference/hooks/customize_save/) - Fires once the theme has switched in the Customizer, but before settings have been saved.
- [`customize_save_{$id_base}`](https://developer.wordpress.org/reference/hooks/customize_save_id_base/) - Fires when the WP_Customize_Setting::save() method is called.
- [`customize_update_{$this->type}`](https://developer.wordpress.org/reference/hooks/customize_update_this-type/) - Fires when the WP_Customize_Setting::update() method is called for settings not handled as theme_mods or options.
- [`delete_{$meta_type}meta`](https://developer.wordpress.org/reference/hooks/delete_meta_typemeta/) - Fires immediately before deleting post or comment metadata of a specific type.
- [`deleted_{$meta_type}meta`](https://developer.wordpress.org/reference/hooks/deleted_meta_typemeta/) - Fires immediately after deleting post or comment metadata of a specific type.
- [`set_comment_cookies`](https://developer.wordpress.org/reference/hooks/set_comment_cookies/) - Fires after comment cookies are set.
- [`start_previewing_theme`](https://developer.wordpress.org/reference/hooks/start_previewing_theme/) - Fires once the Customizer theme preview has started.
- [`stop_previewing_theme`](https://developer.wordpress.org/reference/hooks/stop_previewing_theme/) - Fires once the Customizer theme preview has stopped.
- [`xmlrpc_call_success_blogger_deletePost`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_blogger_deletePost/) - Fires after a post has been successfully deleted via the XML-RPC Blogger API.
- [`xmlrpc_call_success_blogger_editPost`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_blogger_editPost/) - Fires after a post has been successfully updated via the XML-RPC Blogger API.
- [`xmlrpc_call_success_blogger_newPost`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_blogger_newPost/) - Fires after a new post has been successfully created via the XML-RPC Blogger API.
- [`xmlrpc_call_success_mw_editPost`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_mw_editPost/) - Fires after a post has been successfully updated via the XML-RPC MovableType API.
- [`xmlrpc_call_success_mw_newMediaObject`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_mw_newMediaObject/) - Fires after a new attachment has been added via the XML-RPC MovableType API.
- [`xmlrpc_call_success_mw_newPost`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_mw_newPost/) - Fires after a new post has been successfully created via the XML-RPC MovableType API.
- [`xmlrpc_call_success_wp_deleteCategory`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_wp_deleteCategory/) - Fires after a category has been successfully deleted via XML-RPC.
- [`xmlrpc_call_success_wp_deleteComment`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_wp_deleteComment/) - Fires after a comment has been successfully deleted via XML-RPC.
- [`xmlrpc_call_success_wp_deletePage`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_wp_deletePage/) - Fires after a page has been successfully deleted via XML-RPC.
- [`xmlrpc_call_success_wp_editComment`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_wp_editComment/) - Fires after a comment has been successfully updated via XML-RPC.
- [`xmlrpc_call_success_wp_newCategory`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_wp_newCategory/) - Fires after a new category has been successfully created via XML-RPC.
- [`xmlrpc_call_success_wp_newComment`](https://developer.wordpress.org/reference/hooks/xmlrpc_call_success_wp_newComment/) - Fires after a new comment has been successfully created via XML-RPC.

### New Filters

- [`allowed_http_origin`](https://developer.wordpress.org/reference/hooks/allowed_http_origin/) - Changes the allowed HTTP origin result.
- [`allowed_http_origins`](https://developer.wordpress.org/reference/hooks/allowed_http_origins/) - Changes the origin types allowed for HTTP requests.
- [`current_theme_supports-{$feature}`](https://developer.wordpress.org/reference/hooks/current_theme_supports-feature/) - Filters whether the active theme supports a specific feature.
- [`customize_allowed_urls`](https://developer.wordpress.org/reference/hooks/customize_allowed_urls/) - Filters the list of URLs allowed to be clicked and followed in the Customizer preview.
- [`customize_sanitize_js_{$this->id}`](https://developer.wordpress.org/reference/hooks/customize_sanitize_js_this-id/) - Filters a Customize setting value for use in JavaScript.
- [`customize_sanitize_{$this->id}`](https://developer.wordpress.org/reference/hooks/customize_sanitize_this-id/) - Filters a Customize setting value in un-slashed form.
- [`customize_value_{$id_base}`](https://developer.wordpress.org/reference/hooks/customize_value_id_base/) - Filters a Customize setting value not handled as a theme_mod or option.
- [`default_option_{$option}`](https://developer.wordpress.org/reference/hooks/default_option_option/) - Filters the default value for an option.
- [`default_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/default_site_option_option/) - Filters the value of a specific default network option.
- [`http_origin`](https://developer.wordpress.org/reference/hooks/http_origin/) - Changes the origin of an HTTP request.
- [`image_resize_dimensions`](https://developer.wordpress.org/reference/hooks/image_resize_dimensions/) - Filters whether to preempt calculating the image resize dimensions.
- [`plupload_default_params`](https://developer.wordpress.org/reference/hooks/plupload_default_params/) - Filters the Plupload default parameters.
- [`plupload_default_settings`](https://developer.wordpress.org/reference/hooks/plupload_default_settings/) - Filters the Plupload default settings.
- [`post_types_to_delete_with_user`](https://developer.wordpress.org/reference/hooks/post_types_to_delete_with_user/) - Filters the list of post types to delete with a user.
- [`posts_request_ids`](https://developer.wordpress.org/reference/hooks/posts_request_ids/) - Filters the Post IDs SQL request before sending.
- [`sanitize_trackback_urls`](https://developer.wordpress.org/reference/hooks/sanitize_trackback_urls/) - Filters a list of trackback URLs following sanitization.
- [`set_url_scheme`](https://developer.wordpress.org/reference/hooks/set_url_scheme/) - Filters the resulting URL after setting the scheme.
- [`split_the_query`](https://developer.wordpress.org/reference/hooks/split_the_query/) - Filters whether to split the query.
- [`theme_install_actions`](https://developer.wordpress.org/reference/hooks/theme_install_actions/) - Filters the install action links for a theme in the Install Themes list table.
- [`widget_comments_args`](https://developer.wordpress.org/reference/hooks/widget_comments_args/) - Filters the arguments for the Recent Comments widget.
- [`widget_posts_args`](https://developer.wordpress.org/reference/hooks/widget_posts_args/) - Filters the arguments for the Recent Posts widget.
- [`wp_cache_themes_persistently`](https://developer.wordpress.org/reference/hooks/wp_cache_themes_persistently/) - Filters whether to get the cache of the registered theme directories.
- [`wp_die_ajax_handler`](https://developer.wordpress.org/reference/hooks/wp_die_ajax_handler/) - Filters the callback for killing WordPress execution for Ajax requests.
- [`wp_die_xmlrpc_handler`](https://developer.wordpress.org/reference/hooks/wp_die_xmlrpc_handler/) - Filters the callback for killing WordPress execution for XML-RPC requests.
- [`wp_http_cookie_value`](https://developer.wordpress.org/reference/hooks/wp_http_cookie_value/) - Filters the header-encoded cookie value.
- [`wp_terms_checklist_args`](https://developer.wordpress.org/reference/hooks/wp_terms_checklist_args/) - Filters the taxonomy terms checklist arguments.
- [`xmlrpc_default_post_fields`](https://developer.wordpress.org/reference/hooks/xmlrpc_default_post_fields/) - Filters the default post query fields used by the given XML-RPC method.
- [`xmlrpc_default_posttype_fields`](https://developer.wordpress.org/reference/hooks/xmlrpc_default_posttype_fields/) - Filters the default post type query fields used by the given XML-RPC method.
- [`xmlrpc_default_taxonomy_fields`](https://developer.wordpress.org/reference/hooks/xmlrpc_default_taxonomy_fields/) - Filters the default taxonomy query fields used by the given XML-RPC method.
- [`xmlrpc_prepare_comment`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_comment/) - Filters XML-RPC-prepared data for the given comment.
- [`xmlrpc_prepare_media_item`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_media_item/) - Filters XML-RPC-prepared data for the given media item.
- [`xmlrpc_prepare_page`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_page/) - Filters XML-RPC-prepared data for the given page.
- [`xmlrpc_prepare_post`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_post/) - Filters XML-RPC-prepared date for the given post.
- [`xmlrpc_prepare_post_type`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_post_type/) - Filters XML-RPC-prepared date for the given post type.
- [`xmlrpc_prepare_taxonomy`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_taxonomy/) - Filters XML-RPC-prepared data for the given taxonomy.
- [`xmlrpc_prepare_term`](https://developer.wordpress.org/reference/hooks/xmlrpc_prepare_term/) - Filters XML-RPC-prepared data for the given term.
- [`xmlrpc_wp_insert_post_data`](https://developer.wordpress.org/reference/hooks/xmlrpc_wp_insert_post_data/) - Filters post data array to be inserted via XML-RPC.

### Changes

_No changes in this version._

## WordPress 3.3

### New Actions

- [`_core_updated_successfully`](https://developer.wordpress.org/reference/hooks/_core_updated_successfully/) - Fires after WordPress core has been successfully updated.
- [`after_switch_theme`](https://developer.wordpress.org/reference/hooks/after_switch_theme/) - Fires on the next WP load after the theme has been switched.
- [`registered_post_type`](https://developer.wordpress.org/reference/hooks/registered_post_type/) - Fires after a post type is registered.
- [`registered_taxonomy`](https://developer.wordpress.org/reference/hooks/registered_taxonomy/) - Fires after a taxonomy is registered.
- [`wp_trash_post`](https://developer.wordpress.org/reference/hooks/wp_trash_post/) - Fires before a post is sent to the Trash.

### New Filters

- [`auth_{$object_type}_meta_{$meta_key}`](https://developer.wordpress.org/reference/hooks/auth_object_type_meta_meta_key/) - Filters whether the user is allowed to edit a specific meta key of a specific object type.
- [`dbdelta_create_queries`](https://developer.wordpress.org/reference/hooks/dbdelta_create_queries/) - Filters the dbDelta SQL queries for creating tables and/or databases.
- [`dbdelta_insert_queries`](https://developer.wordpress.org/reference/hooks/dbdelta_insert_queries/) - Filters the dbDelta SQL queries for inserting or updating.
- [`dbdelta_queries`](https://developer.wordpress.org/reference/hooks/dbdelta_queries/) - Filters the dbDelta SQL queries.
- [`hidden_meta_boxes`](https://developer.wordpress.org/reference/hooks/hidden_meta_boxes/) - Filters the list of hidden meta boxes.
- [`image_size_names_choose`](https://developer.wordpress.org/reference/hooks/image_size_names_choose/) - Filters the names and labels of the default image sizes.
- [`page_attributes_dropdown_pages_args`](https://developer.wordpress.org/reference/hooks/page_attributes_dropdown_pages_args/) - Filters the arguments used to generate a Pages drop-down element.
- [`plupload_init`](https://developer.wordpress.org/reference/hooks/plupload_init/) - Filters the default Plupload settings.
- [`pre_ent2ncr`](https://developer.wordpress.org/reference/hooks/pre_ent2ncr/) - Filters text before named entities are converted into numbered entities.
- [`print_late_styles`](https://developer.wordpress.org/reference/hooks/print_late_styles/) - Filters whether to print the styles queued too late for the HTML head.
- [`quicktags_settings`](https://developer.wordpress.org/reference/hooks/quicktags_settings/) - Filters the Quicktags settings.
- [`sanitize_{$object_type}_meta_{$meta_key}`](https://developer.wordpress.org/reference/hooks/sanitize_object_type_meta_meta_key/) - Filters the sanitization of a specific meta key of a specific meta type.
- [`tiny_mce_plugins`](https://developer.wordpress.org/reference/hooks/tiny_mce_plugins/) - Filters the list of default TinyMCE plugins.
- [`type_url_form_media`](https://developer.wordpress.org/reference/hooks/type_url_form_media/) - Filters the insert media from URL form HTML.
- [`wp_check_post_lock_window`](https://developer.wordpress.org/reference/hooks/wp_check_post_lock_window/) - Filters the post lock window duration.
- [`wp_insert_post_empty_content`](https://developer.wordpress.org/reference/hooks/wp_insert_post_empty_content/) - Filters whether the post should be considered "empty".
- [`wp_is_large_network`](https://developer.wordpress.org/reference/hooks/wp_is_large_network/) - Filters whether the network is considered large.
- [`wp_trim_words`](https://developer.wordpress.org/reference/hooks/wp_trim_words/) - Filters the text content after words have been trimmed.
- [`wp_unique_post_slug`](https://developer.wordpress.org/reference/hooks/wp_unique_post_slug/) - Filters the unique post slug.
- [`wxr_export_skip_postmeta`](https://developer.wordpress.org/reference/hooks/wxr_export_skip_postmeta/) - Filters whether to selectively skip post meta used for WXR exports.
- [`{$type}_send_to_editor_url`](https://developer.wordpress.org/reference/hooks/type_send_to_editor_url/) - Filters the URL sent to the editor for a specific media type.

### Changes

- [`auth_{$object_type}_meta_{$meta_key}`](https://developer.wordpress.org/reference/hooks/auth_object_type_meta_meta_key/) - As <code>auth_post_meta_{$meta_key}</code>.
- [`mce_buttons_2`](https://developer.wordpress.org/reference/hooks/mce_buttons_2/) - The <code>$editor_id</code> parameter was added.
- [`mce_buttons_3`](https://developer.wordpress.org/reference/hooks/mce_buttons_3/) - The <code>$editor_id</code> parameter was added.
- [`mce_buttons_4`](https://developer.wordpress.org/reference/hooks/mce_buttons_4/) - The <code>$editor_id</code> parameter was added.
- [`mce_buttons`](https://developer.wordpress.org/reference/hooks/mce_buttons/) - The <code>$editor_id</code> parameter was added.
- [`teeny_mce_before_init`](https://developer.wordpress.org/reference/hooks/teeny_mce_before_init/) - The <code>$editor_id</code> parameter was added.
- [`teeny_mce_buttons`](https://developer.wordpress.org/reference/hooks/teeny_mce_buttons/) - The <code>$editor_id</code> parameter was added.
- [`teeny_mce_plugins`](https://developer.wordpress.org/reference/hooks/teeny_mce_plugins/) - The <code>$editor_id</code> parameter was added.
- [`tiny_mce_before_init`](https://developer.wordpress.org/reference/hooks/tiny_mce_before_init/) - The <code>$editor_id</code> parameter was added.

## WordPress 3.2

### New Actions

- [`after_delete_post`](https://developer.wordpress.org/reference/hooks/after_delete_post/) - Fires after a post is deleted, at the conclusion of wp_delete_post().
- [`after_wp_tiny_mce`](https://developer.wordpress.org/reference/hooks/after_wp_tiny_mce/) - Fires after any core TinyMCE editor instances are created.
- [`atom_author`](https://developer.wordpress.org/reference/hooks/atom_author/) - Fires at the end of each Atom feed author entry.
- [`before_delete_post`](https://developer.wordpress.org/reference/hooks/before_delete_post/) - Fires before a post is deleted, at the start of wp_delete_post().
- [`before_wp_tiny_mce`](https://developer.wordpress.org/reference/hooks/before_wp_tiny_mce/) - Fires immediately before the TinyMCE settings are printed.
- [`login_init`](https://developer.wordpress.org/reference/hooks/login_init/) - Fires when the login form is initialized.
- [`update-core-custom_{$action}`](https://developer.wordpress.org/reference/hooks/update-core-custom_action/) - Fires for each custom update action on the WordPress Updates screen.

### New Filters

- [`browse-happy-notice`](https://developer.wordpress.org/reference/hooks/browse-happy-notice/) - Filters the notice output for the 'Browse Happy' nag meta box.
- [`close_comments_for_post_types`](https://developer.wordpress.org/reference/hooks/close_comments_for_post_types/) - Filters the list of post types to automatically close comments for.
- [`display_media_states`](https://developer.wordpress.org/reference/hooks/display_media_states/) - Filters the default media display states for items in the Media list table.
- [`found_users_query`](https://developer.wordpress.org/reference/hooks/found_users_query/) - Filters SELECT FOUND_ROWS() query for the current WP_User_Query instance.
- [`is_multi_author`](https://developer.wordpress.org/reference/hooks/is_multi_author/) - Filters whether the site has more than one author with published posts.
- [`is_protected_meta`](https://developer.wordpress.org/reference/hooks/is_protected_meta/) - Filters whether a meta key is considered protected.
- [`ms_user_row_actions`](https://developer.wordpress.org/reference/hooks/ms_user_row_actions/) - Filters the action links displayed under each user in the Network Admin Users list table.
- [`nav_menu_items_{$post_type_name}`](https://developer.wordpress.org/reference/hooks/nav_menu_items_post_type_name/) - Filters the posts displayed in the 'View All' tab of the current post type's menu items meta box.
- [`option_page_capability_{$option_page}`](https://developer.wordpress.org/reference/hooks/option_page_capability_option_page/) - Filters the capability required when using the Settings API.
- [`postbox_classes_{$screen_id}_{$box_id}`](https://developer.wordpress.org/reference/hooks/postbox_classes_screen_id_box_id/) - Filters the postbox classes for a specific screen and box ID combo.
- [`redirect_network_admin_request`](https://developer.wordpress.org/reference/hooks/redirect_network_admin_request/) - Filters whether to redirect the request to the Network Admin.
- [`redirect_user_admin_request`](https://developer.wordpress.org/reference/hooks/redirect_user_admin_request/) - Filters whether to redirect the request to the User Admin in Multisite.
- [`screen_options_show_screen`](https://developer.wordpress.org/reference/hooks/screen_options_show_screen/) - Filters whether to show the Screen Options tab.
- [`use_google_chrome_frame`](https://developer.wordpress.org/reference/hooks/use_google_chrome_frame/) - Filters whether Google Chrome Frame should be used, if available.

### Changes

_No changes in this version._

## WordPress 3.1

### New Actions

- [`_network_admin_menu`](https://developer.wordpress.org/reference/hooks/_network_admin_menu/) - Fires before the administration menu loads in the Network Admin.
- [`_user_admin_menu`](https://developer.wordpress.org/reference/hooks/_user_admin_menu/) - Fires before the administration menu loads in the User Admin.
- [`add_admin_bar_menus`](https://developer.wordpress.org/reference/hooks/add_admin_bar_menus/) - Fires after menus are added to the menu bar.
- [`add_{$meta_type}_meta`](https://developer.wordpress.org/reference/hooks/add_meta_type_meta/) - Fires immediately before meta of a specific type is added.
- [`admin_bar_init`](https://developer.wordpress.org/reference/hooks/admin_bar_init/) - Fires after WP_Admin_Bar is initialized.
- [`admin_bar_menu`](https://developer.wordpress.org/reference/hooks/admin_bar_menu/) - Loads all necessary admin bar items.
- [`admin_notices`](https://developer.wordpress.org/reference/hooks/admin_notices/) - Prints admin screen notices.
- [`after_theme_row`](https://developer.wordpress.org/reference/hooks/after_theme_row/) - Fires after each row in the Multisite themes list table.
- [`all_admin_notices`](https://developer.wordpress.org/reference/hooks/all_admin_notices/) - Prints generic admin screen notices.
- [`custom_header_options`](https://developer.wordpress.org/reference/hooks/custom_header_options/) - Fires just before the submit button in the custom header options form.
- [`delete_{$meta_type}_meta`](https://developer.wordpress.org/reference/hooks/delete_meta_type_meta/) - Fires immediately before deleting metadata of a specific type.
- [`doing_it_wrong_run`](https://developer.wordpress.org/reference/hooks/doing_it_wrong_run/) - Fires when the given function is being used incorrectly.
- [`in_theme_update_message-{$theme_key}`](https://developer.wordpress.org/reference/hooks/in_theme_update_message-theme_key/) - Fires at the end of the update message container in each row of the themes list table.
- [`login_enqueue_scripts`](https://developer.wordpress.org/reference/hooks/login_enqueue_scripts/) - Enqueues scripts and styles for the login page.
- [`login_footer`](https://developer.wordpress.org/reference/hooks/login_footer/) - Fires in the login page footer.
- [`manage_plugins_custom_column`](https://developer.wordpress.org/reference/hooks/manage_plugins_custom_column/) - Fires inside each custom column of the Plugins list table.
- [`manage_sites_custom_column`](https://developer.wordpress.org/reference/hooks/manage_sites_custom_column/) - Fires for each registered custom column in the Sites list table.
- [`manage_themes_custom_column`](https://developer.wordpress.org/reference/hooks/manage_themes_custom_column/) - Fires inside each custom column of the Multisite themes list table.
- [`manage_{$post->post_type}_posts_custom_column`](https://developer.wordpress.org/reference/hooks/manage_post-post_type_posts_custom_column/) - Fires for each custom column of a specific post type in the Posts list table.
- [`mature_blog`](https://developer.wordpress.org/reference/hooks/mature_blog/) - Fires when the 'mature' status is added to a site.
- [`network_admin_edit_{$action}`](https://developer.wordpress.org/reference/hooks/network_admin_edit_action/) - Fires the requested handler action.
- [`network_admin_menu`](https://developer.wordpress.org/reference/hooks/network_admin_menu/) - Fires before the administration menu loads in the Network Admin.
- [`network_admin_notices`](https://developer.wordpress.org/reference/hooks/network_admin_notices/) - Prints network admin screen notices.
- [`network_site_users_after_list_table`](https://developer.wordpress.org/reference/hooks/network_site_users_after_list_table/) - Fires after the list table on the Users screen in the Multisite Network Admin.
- [`post_comment_status_meta_box-options`](https://developer.wordpress.org/reference/hooks/post_comment_status_meta_box-options/) - Fires at the end of the Discussion meta box on the post editing screen.
- [`pre_get_comments`](https://developer.wordpress.org/reference/hooks/pre_get_comments/) - Fires before comments are retrieved.
- [`pre_user_query`](https://developer.wordpress.org/reference/hooks/pre_user_query/) - Fires after the WP_User_Query has been parsed, and before the query is executed.
- [`unmature_blog`](https://developer.wordpress.org/reference/hooks/unmature_blog/) - Fires when the 'mature' status is removed from a site.
- [`user_admin_menu`](https://developer.wordpress.org/reference/hooks/user_admin_menu/) - Fires before the administration menu loads in the User Admin.
- [`user_admin_notices`](https://developer.wordpress.org/reference/hooks/user_admin_notices/) - Prints user admin screen notices.
- [`wp_after_admin_bar_render`](https://developer.wordpress.org/reference/hooks/wp_after_admin_bar_render/) - Fires after the admin bar is rendered.
- [`wp_before_admin_bar_render`](https://developer.wordpress.org/reference/hooks/wp_before_admin_bar_render/) - Fires before the admin bar is rendered.
- [`wp_network_dashboard_setup`](https://developer.wordpress.org/reference/hooks/wp_network_dashboard_setup/) - Fires after core widgets for the Network Admin dashboard have been registered.
- [`wp_user_dashboard_setup`](https://developer.wordpress.org/reference/hooks/wp_user_dashboard_setup/) - Fires after core widgets for the User Admin dashboard have been registered.

### New Filters

- [`add_{$meta_type}_metadata`](https://developer.wordpress.org/reference/hooks/add_meta_type_metadata/) - Short-circuits adding metadata of a specific type.
- [`admin_title`](https://developer.wordpress.org/reference/hooks/admin_title/) - Filters the title tag content for an admin page.
- [`all_themes`](https://developer.wordpress.org/reference/hooks/all_themes/) - Filters the full array of WP_Theme objects to list in the Multisite themes list table.
- [`bulk_actions-{$this->screen->id}`](https://developer.wordpress.org/reference/hooks/bulk_actions-this-screen-id/) - Filters the items in the bulk actions menu of the list table.
- [`can_edit_network`](https://developer.wordpress.org/reference/hooks/can_edit_network/) - Filters whether this network can be edited from this page.
- [`comments_clauses`](https://developer.wordpress.org/reference/hooks/comments_clauses/) - Filters the comment query clauses.
- [`default_hidden_meta_boxes`](https://developer.wordpress.org/reference/hooks/default_hidden_meta_boxes/) - Filters the default list of hidden meta boxes.
- [`delete_{$meta_type}_metadata`](https://developer.wordpress.org/reference/hooks/delete_meta_type_metadata/) - Short-circuits deleting metadata of a specific type.
- [`doing_it_wrong_trigger_error`](https://developer.wordpress.org/reference/hooks/doing_it_wrong_trigger_error/) - Filters whether to trigger an error for _doing_it_wrong() calls.
- [`edit_profile_url`](https://developer.wordpress.org/reference/hooks/edit_profile_url/) - Filters the URL for a user's profile editor.
- [`edit_term_link`](https://developer.wordpress.org/reference/hooks/edit_term_link/) - Filters the anchor tag for the edit link of a term.
- [`enter_title_here`](https://developer.wordpress.org/reference/hooks/enter_title_here/) - Filters the title field placeholder text.
- [`esc_textarea`](https://developer.wordpress.org/reference/hooks/esc_textarea/) - Filters a string cleaned and escaped for output in a textarea element.
- [`force_filtered_html_on_import`](https://developer.wordpress.org/reference/hooks/force_filtered_html_on_import/) - Filters whether to filter imported data through kses on import.
- [`get_ancestors`](https://developer.wordpress.org/reference/hooks/get_ancestors/) - Filters a given object's ancestors.
- [`get_edit_term_link`](https://developer.wordpress.org/reference/hooks/get_edit_term_link/) - Filters the edit link for a term.
- [`get_media_item_args`](https://developer.wordpress.org/reference/hooks/get_media_item_args/) - Filters the arguments used to retrieve an image for the edit image form.
- [`get_meta_sql`](https://developer.wordpress.org/reference/hooks/get_meta_sql/) - Filters the meta query's generated SQL.
- [`get_terms_args`](https://developer.wordpress.org/reference/hooks/get_terms_args/) - Filters the terms query arguments.
- [`get_the_categories`](https://developer.wordpress.org/reference/hooks/get_the_categories/) - Filters the array of categories to return for a post.
- [`get_the_terms`](https://developer.wordpress.org/reference/hooks/get_the_terms/) - Filters the list of terms attached to the given post.
- [`get_{$meta_type}_metadata`](https://developer.wordpress.org/reference/hooks/get_meta_type_metadata/) - Short-circuits the return value of a meta field.
- [`list_pages`](https://developer.wordpress.org/reference/hooks/list_pages/) - Filters the page title when creating an HTML drop-down list of pages.
- [`load_image_to_edit_attachmenturl`](https://developer.wordpress.org/reference/hooks/load_image_to_edit_attachmenturl/) - Filters the path to an attachment's URL when editing the image.
- [`load_image_to_edit_filesystempath`](https://developer.wordpress.org/reference/hooks/load_image_to_edit_filesystempath/) - Filters the path to an attachment's file when editing the image.
- [`manage_sites_action_links`](https://developer.wordpress.org/reference/hooks/manage_sites_action_links/) - Filters the action links displayed for each site in the Sites list table.
- [`manage_{$this->screen->id}_sortable_columns`](https://developer.wordpress.org/reference/hooks/manage_this-screen-id_sortable_columns/) - Filters the list table sortable columns for a specific screen.
- [`media_upload_mime_type_links`](https://developer.wordpress.org/reference/hooks/media_upload_mime_type_links/) - Filters the media upload mime type list items.
- [`ms_user_list_site_actions`](https://developer.wordpress.org/reference/hooks/ms_user_list_site_actions/) - Filters the action links displayed next the sites a user belongs to in the Network Admin Users list table.
- [`network_admin_plugin_action_links`](https://developer.wordpress.org/reference/hooks/network_admin_plugin_action_links/) - Filters the action links displayed for each plugin in the Network Admin Plugins list table.
- [`network_admin_plugin_action_links_{$plugin_file}`](https://developer.wordpress.org/reference/hooks/network_admin_plugin_action_links_plugin_file/) - Filters the list of action links displayed for a specific plugin in the Network Admin Plugins list table.
- [`network_sites_updated_message_{$action}`](https://developer.wordpress.org/reference/hooks/network_sites_updated_message_action/) - Filters a specific, non-default, site-updated message in the Network admin.
- [`post_format_rewrite_base`](https://developer.wordpress.org/reference/hooks/post_format_rewrite_base/) - Filters the post formats rewrite base.
- [`post_type_archive_feed_link`](https://developer.wordpress.org/reference/hooks/post_type_archive_feed_link/) - Filters the post type archive feed link.
- [`post_type_archive_link`](https://developer.wordpress.org/reference/hooks/post_type_archive_link/) - Filters the post type archive permalink.
- [`post_type_archive_title`](https://developer.wordpress.org/reference/hooks/post_type_archive_title/) - Filters the post type archive title.
- [`posts_clauses`](https://developer.wordpress.org/reference/hooks/posts_clauses/) - Filters all query clauses at once, for convenience.
- [`posts_clauses_request`](https://developer.wordpress.org/reference/hooks/posts_clauses_request/) - Filters all query clauses at once, for convenience.
- [`sanitize_mime_type`](https://developer.wordpress.org/reference/hooks/sanitize_mime_type/) (3.1.3) - Filters a mime type following sanitization.
- [`schedule_event`](https://developer.wordpress.org/reference/hooks/schedule_event/) - Modify an event before it is scheduled.
- [`secure_auth_cookie`](https://developer.wordpress.org/reference/hooks/secure_auth_cookie/) - Filters whether the auth cookie should only be sent over HTTPS.
- [`secure_auth_redirect`](https://developer.wordpress.org/reference/hooks/secure_auth_redirect/) - Filters whether to use a secure authentication redirect.
- [`secure_logged_in_cookie`](https://developer.wordpress.org/reference/hooks/secure_logged_in_cookie/) - Filters whether the logged in cookie should only be sent over HTTPS.
- [`secure_signon_cookie`](https://developer.wordpress.org/reference/hooks/secure_signon_cookie/) - Filters whether to use a secure sign-on cookie.
- [`show_admin_bar`](https://developer.wordpress.org/reference/hooks/show_admin_bar/) - Filters whether to show the admin bar.
- [`show_network_site_users_add_existing_form`](https://developer.wordpress.org/reference/hooks/show_network_site_users_add_existing_form/) - Filters whether to show the Add Existing User form on the Multisite Users screen.
- [`show_network_site_users_add_new_form`](https://developer.wordpress.org/reference/hooks/show_network_site_users_add_new_form/) - Filters whether to show the Add New User form on the Multisite Users screen.
- [`single_term_title`](https://developer.wordpress.org/reference/hooks/single_term_title/) - Filters the custom taxonomy archive page title.
- [`terms_clauses`](https://developer.wordpress.org/reference/hooks/terms_clauses/) - Filters the terms query SQL clauses.
- [`the_comments`](https://developer.wordpress.org/reference/hooks/the_comments/) - Filters the comment query results.
- [`theme_action_links_{$stylesheet}`](https://developer.wordpress.org/reference/hooks/theme_action_links_stylesheet/) - Filters the action links of a specific theme in the Multisite themes list table.
- [`theme_row_meta`](https://developer.wordpress.org/reference/hooks/theme_row_meta/) - Filters the array of row meta for each theme in the Multisite themes list table.
- [`update_{$meta_type}_metadata`](https://developer.wordpress.org/reference/hooks/update_meta_type_metadata/) - Short-circuits updating metadata of a specific type.
- [`upload_post_params`](https://developer.wordpress.org/reference/hooks/upload_post_params/) - Filters the media upload post parameters.
- [`use_default_gallery_style`](https://developer.wordpress.org/reference/hooks/use_default_gallery_style/) - Filters whether to print default gallery styles.
- [`user_admin_url`](https://developer.wordpress.org/reference/hooks/user_admin_url/) - Filters the user admin URL for the current user.
- [`user_dashboard_url`](https://developer.wordpress.org/reference/hooks/user_dashboard_url/) - Filters the dashboard URL for a user.
- [`views_{$this->screen->id}`](https://developer.wordpress.org/reference/hooks/views_this-screen-id/) - Filters the list of available list table views.
- [`wp_admin_bar_class`](https://developer.wordpress.org/reference/hooks/wp_admin_bar_class/) - Filters the admin bar class to instantiate.
- [`wp_get_current_commenter`](https://developer.wordpress.org/reference/hooks/wp_get_current_commenter/) - Filters the current commenter's name, email, and URL.
- [`wp_insert_post_parent`](https://developer.wordpress.org/reference/hooks/wp_insert_post_parent/) - Filters the post parent -- used to check for and prevent hierarchy loops.
- [`wp_nav_menu_objects`](https://developer.wordpress.org/reference/hooks/wp_nav_menu_objects/) - Filters the sorted list of menu item objects before generating the menu's HTML.
- [`wp_network_dashboard_widgets`](https://developer.wordpress.org/reference/hooks/wp_network_dashboard_widgets/) - Filters the list of widgets to load for the Network Admin dashboard.
- [`wp_unique_post_slug_is_bad_attachment_slug`](https://developer.wordpress.org/reference/hooks/wp_unique_post_slug_is_bad_attachment_slug/) - Filters whether the post slug would make a bad attachment slug.
- [`wp_unique_post_slug_is_bad_flat_slug`](https://developer.wordpress.org/reference/hooks/wp_unique_post_slug_is_bad_flat_slug/) - Filters whether the post slug would be bad as a flat slug.
- [`wp_unique_post_slug_is_bad_hierarchical_slug`](https://developer.wordpress.org/reference/hooks/wp_unique_post_slug_is_bad_hierarchical_slug/) - Filters whether the post slug would make a bad hierarchical post slug.
- [`wp_update_term_parent`](https://developer.wordpress.org/reference/hooks/wp_update_term_parent/) - Filters the term parent.
- [`wp_user_dashboard_widgets`](https://developer.wordpress.org/reference/hooks/wp_user_dashboard_widgets/) - Filters the list of widgets to load for the User Admin dashboard.
- [`wp_xmlrpc_server_class`](https://developer.wordpress.org/reference/hooks/wp_xmlrpc_server_class/) - Filters the class used for handling XML-RPC requests.
- [`{$permastructname}_rewrite_rules`](https://developer.wordpress.org/reference/hooks/permastructname_rewrite_rules/) - Filters rewrite rules used for individual permastructs.

### Changes

- [`upload_post_params`](https://developer.wordpress.org/reference/hooks/upload_post_params/) - As 'swfupload_post_params'

## WordPress 3.0

### New Actions

- [`activate_header`](https://developer.wordpress.org/reference/hooks/activate_header/) - Fires before the Site Activation page is loaded.
- [`activate_wp_head`](https://developer.wordpress.org/reference/hooks/activate_wp_head/) - Fires within the `<head>` section of the Site Activation page.
- [`add_meta_boxes`](https://developer.wordpress.org/reference/hooks/add_meta_boxes/) - Fires after all built-in meta boxes have been added.
- [`add_meta_boxes_comment`](https://developer.wordpress.org/reference/hooks/add_meta_boxes_comment/) - Fires when comment-specific meta boxes are added.
- [`add_meta_boxes_link`](https://developer.wordpress.org/reference/hooks/add_meta_boxes_link/) - Fires when link-specific meta boxes are added.
- [`add_meta_boxes_{$post_type}`](https://developer.wordpress.org/reference/hooks/add_meta_boxes_post_type/) - Fires after all built-in meta boxes have been added, contextually for the given post type.
- [`add_site_option`](https://developer.wordpress.org/reference/hooks/add_site_option/) - Fires after a network option has been successfully added.
- [`add_tag_form_fields`](https://developer.wordpress.org/reference/hooks/add_tag_form_fields/) - Fires after the Add Tag form fields for non-hierarchical taxonomies.
- [`admin_color_scheme_picker`](https://developer.wordpress.org/reference/hooks/admin_color_scheme_picker/) - Fires in the 'Admin Color Scheme' section of the user editing screen.
- [`after-{$taxonomy}-table`](https://developer.wordpress.org/reference/hooks/after-taxonomy-table/) - Fires after the taxonomy list table.
- [`after_setup_theme`](https://developer.wordpress.org/reference/hooks/after_setup_theme/) - Fires after the theme is loaded.
- [`after_signup_form`](https://developer.wordpress.org/reference/hooks/after_signup_form/) - Fires after the sign-up forms, before wp_footer.
- [`before_signup_form`](https://developer.wordpress.org/reference/hooks/before_signup_form/) - Fires before the site Sign-up form.
- [`clean_attachment_cache`](https://developer.wordpress.org/reference/hooks/clean_attachment_cache/) - Fires after the given attachment's cache is cleaned.
- [`comment_duplicate_trigger`](https://developer.wordpress.org/reference/hooks/comment_duplicate_trigger/) - Fires immediately after a duplicate comment is detected.
- [`comment_form_after`](https://developer.wordpress.org/reference/hooks/comment_form_after/) - Fires after the comment form.
- [`comment_form_after_fields`](https://developer.wordpress.org/reference/hooks/comment_form_after_fields/) - Fires after the comment fields in the comment form, excluding the textarea.
- [`comment_form_before`](https://developer.wordpress.org/reference/hooks/comment_form_before/) - Fires before the comment form.
- [`comment_form_before_fields`](https://developer.wordpress.org/reference/hooks/comment_form_before_fields/) - Fires before the comment fields in the comment form, excluding the textarea.
- [`comment_form_comments_closed`](https://developer.wordpress.org/reference/hooks/comment_form_comments_closed/) - Fires after the comment form if comments are closed.
- [`comment_form_logged_in_after`](https://developer.wordpress.org/reference/hooks/comment_form_logged_in_after/) - Fires after the is_user_logged_in() check in the comment form.
- [`comment_form_must_log_in_after`](https://developer.wordpress.org/reference/hooks/comment_form_must_log_in_after/) - Fires after the HTML-formatted 'must log in after' message in the comment form.
- [`comment_form_top`](https://developer.wordpress.org/reference/hooks/comment_form_top/) - Fires at the top of the comment form, inside the form tag.
- [`current_screen`](https://developer.wordpress.org/reference/hooks/current_screen/) - Fires after the current screen has been set.
- [`delete_option_{$option}`](https://developer.wordpress.org/reference/hooks/delete_option_option/) - Fires after a specific option has been deleted.
- [`delete_site_option`](https://developer.wordpress.org/reference/hooks/delete_site_option/) - Fires after a network option has been deleted.
- [`delete_site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/delete_site_transient_transient/) - Fires immediately before a specific site transient is deleted.
- [`delete_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/delete_transient_transient/) - Fires immediately before a specific transient is deleted.
- [`deleted_site_transient`](https://developer.wordpress.org/reference/hooks/deleted_site_transient/) - Fires after a transient is deleted.
- [`deleted_transient`](https://developer.wordpress.org/reference/hooks/deleted_transient/) - Fires after a transient is deleted.
- [`deprecated_argument_run`](https://developer.wordpress.org/reference/hooks/deprecated_argument_run/) - Fires when a deprecated argument is called.
- [`do_meta_boxes`](https://developer.wordpress.org/reference/hooks/do_meta_boxes/) - Fires after meta boxes have been added.
- [`dynamic_sidebar`](https://developer.wordpress.org/reference/hooks/dynamic_sidebar/) - Fires before a widget's display callback is called.
- [`get_template_part_{$slug}`](https://developer.wordpress.org/reference/hooks/get_template_part_slug/) - Fires before the specified template part file is loaded.
- [`grant_super_admin`](https://developer.wordpress.org/reference/hooks/grant_super_admin/) - Fires before the user is granted Super Admin privileges.
- [`granted_super_admin`](https://developer.wordpress.org/reference/hooks/granted_super_admin/) - Fires after the user is granted Super Admin privileges.
- [`in_admin_header`](https://developer.wordpress.org/reference/hooks/in_admin_header/) - Fires at the beginning of the content section in an admin page.
- [`make_ham_user`](https://developer.wordpress.org/reference/hooks/make_ham_user/) - Fires after the user is marked as a HAM user. Opposite of SPAM.
- [`make_spam_user`](https://developer.wordpress.org/reference/hooks/make_spam_user/) - Fires after the user is marked as a SPAM user.
- [`myblogs_allblogs_options`](https://developer.wordpress.org/reference/hooks/myblogs_allblogs_options/) - Fires before the sites list on the My Sites screen.
- [`opml_head`](https://developer.wordpress.org/reference/hooks/opml_head/) - Fires in the OPML header.
- [`post_edit_form_tag`](https://developer.wordpress.org/reference/hooks/post_edit_form_tag/) - Fires inside the post editor form tag.
- [`post_updated`](https://developer.wordpress.org/reference/hooks/post_updated/) - Fires once an existing post has been updated.
- [`pre_current_active_plugins`](https://developer.wordpress.org/reference/hooks/pre_current_active_plugins/) - Fires before the plugins list table is rendered.
- [`pre_delete_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_delete_site_option_option/) - Fires immediately before a specific network option is deleted.
- [`preprocess_signup_form`](https://developer.wordpress.org/reference/hooks/preprocess_signup_form/) - Fires when the site sign-up form is sent.
- [`register_sidebar`](https://developer.wordpress.org/reference/hooks/register_sidebar/) - Fires once a sidebar has been registered.
- [`revoke_super_admin`](https://developer.wordpress.org/reference/hooks/revoke_super_admin/) - Fires before the user's Super Admin privileges are revoked.
- [`revoked_super_admin`](https://developer.wordpress.org/reference/hooks/revoked_super_admin/) - Fires after the user's Super Admin privileges are revoked.
- [`set_site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/set_site_transient_transient/) - Fires after the value for a specific site transient has been set.
- [`set_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/set_transient_transient/) - Fires after the value for a specific transient has been set.
- [`signup_blogform`](https://developer.wordpress.org/reference/hooks/signup_blogform/) - Fires after the site sign-up form.
- [`signup_extra_fields`](https://developer.wordpress.org/reference/hooks/signup_extra_fields/) - Fires at the end of the new user account registration form.
- [`signup_finished`](https://developer.wordpress.org/reference/hooks/signup_finished/) - Fires when the site or user sign-up process is complete.
- [`signup_header`](https://developer.wordpress.org/reference/hooks/signup_header/) - Fires within the head section of the site sign-up screen.
- [`the_widget`](https://developer.wordpress.org/reference/hooks/the_widget/) - Fires before rendering the requested widget.
- [`unload_textdomain`](https://developer.wordpress.org/reference/hooks/unload_textdomain/) - Fires before the text domain is unloaded.
- [`update_site_option`](https://developer.wordpress.org/reference/hooks/update_site_option/) - Fires after the value of a network option has been successfully updated.
- [`user_edit_form_tag`](https://developer.wordpress.org/reference/hooks/user_edit_form_tag/) - Fires inside the your-profile form tag on the user editing screen.
- [`user_new_form_tag`](https://developer.wordpress.org/reference/hooks/user_new_form_tag/) - Fires inside the adduser form tag.
- [`widgets_admin_page`](https://developer.wordpress.org/reference/hooks/widgets_admin_page/) - Fires before the Widgets administration page content loads.
- [`wp_create_nav_menu`](https://developer.wordpress.org/reference/hooks/wp_create_nav_menu/) - Fires after a navigation menu is successfully created.
- [`wp_delete_nav_menu`](https://developer.wordpress.org/reference/hooks/wp_delete_nav_menu/) - Fires after a navigation menu has been successfully deleted.
- [`wp_feed_options`](https://developer.wordpress.org/reference/hooks/wp_feed_options/) - Fires just before processing the SimplePie feed object.
- [`wp_loaded`](https://developer.wordpress.org/reference/hooks/wp_loaded/) - This hook is fired once WP, all plugins, and the theme are fully loaded and instantiated.
- [`wp_register_sidebar_widget`](https://developer.wordpress.org/reference/hooks/wp_register_sidebar_widget/) - Fires once for each registered widget.
- [`wp_unregister_sidebar_widget`](https://developer.wordpress.org/reference/hooks/wp_unregister_sidebar_widget/) - Fires just before a widget is removed from a sidebar.
- [`wp_update_nav_menu`](https://developer.wordpress.org/reference/hooks/wp_update_nav_menu/) - Fires after a navigation menu has been successfully updated.
- [`wp_update_nav_menu_item`](https://developer.wordpress.org/reference/hooks/wp_update_nav_menu_item/) - Fires after a navigation menu item has been updated.
- [`wpmu_update_blog_options`](https://developer.wordpress.org/reference/hooks/wpmu_update_blog_options/) - Fires after the site options are updated.
- [`wpmuadminedit`](https://developer.wordpress.org/reference/hooks/wpmuadminedit/) - Fires just before the action handler in several Network Admin screens.
- [`wpmueditblogaction`](https://developer.wordpress.org/reference/hooks/wpmueditblogaction/) - Fires at the end of the Edit Site form, before the submit button.
- [`{$taxonomy}_add_form`](https://developer.wordpress.org/reference/hooks/taxonomy_add_form/) - Fires at the end of the Add Term form for all taxonomies.
- [`{$taxonomy}_add_form_fields`](https://developer.wordpress.org/reference/hooks/taxonomy_add_form_fields/) - Fires after the Add Term form fields.
- [`{$taxonomy}_edit_form`](https://developer.wordpress.org/reference/hooks/taxonomy_edit_form/) - Fires at the end of the Edit Term form for all taxonomies.
- [`{$taxonomy}_edit_form_fields`](https://developer.wordpress.org/reference/hooks/taxonomy_edit_form_fields/) - Fires after the Edit Term form fields are displayed.
- [`{$taxonomy}_pre_add_form`](https://developer.wordpress.org/reference/hooks/taxonomy_pre_add_form/) - Fires before the Add Term form for all taxonomies.
- [`{$taxonomy}_pre_edit_form`](https://developer.wordpress.org/reference/hooks/taxonomy_pre_edit_form/) - Fires before the Edit Term form for all taxonomies.

### New Filters

- [`add_signup_meta`](https://developer.wordpress.org/reference/hooks/add_signup_meta/) - Filters the new default site meta variables.
- [`admin_memory_limit`](https://developer.wordpress.org/reference/hooks/admin_memory_limit/) - Filters the maximum memory limit available for administration screens.
- [`all_plugins`](https://developer.wordpress.org/reference/hooks/all_plugins/) - Filters the full array of plugins to list in the Plugins list table.
- [`allow_subdirectory_install`](https://developer.wordpress.org/reference/hooks/allow_subdirectory_install/) - Filters whether to enable the subdirectory installation feature in Multisite.
- [`blog_redirect_404`](https://developer.wordpress.org/reference/hooks/blog_redirect_404/) - Filters the redirect URL for 404s on the main site.
- [`comment_form_default_fields`](https://developer.wordpress.org/reference/hooks/comment_form_default_fields/) - Filters the default comment form fields.
- [`comment_form_defaults`](https://developer.wordpress.org/reference/hooks/comment_form_defaults/) - Filters the comment form default arguments.
- [`comment_form_field_comment`](https://developer.wordpress.org/reference/hooks/comment_form_field_comment/) - Filters the content of the comment textarea field for display.
- [`comment_form_field_{$name}`](https://developer.wordpress.org/reference/hooks/comment_form_field_name/) - Filters a comment form field for display.
- [`comment_form_logged_in`](https://developer.wordpress.org/reference/hooks/comment_form_logged_in/) - Filters the 'logged in' message for the comment form for display.
- [`comment_id_fields`](https://developer.wordpress.org/reference/hooks/comment_id_fields/) - Filters the returned comment ID fields.
- [`comment_max_links_url`](https://developer.wordpress.org/reference/hooks/comment_max_links_url/) - Filters the number of links found in a comment.
- [`delete_site_email_content`](https://developer.wordpress.org/reference/hooks/delete_site_email_content/) - Filters the text for the email sent to the site admin when a request to delete a site in a Multisite network is submitted.
- [`deprecated_argument_trigger_error`](https://developer.wordpress.org/reference/hooks/deprecated_argument_trigger_error/) - Filters whether to trigger an error for deprecated arguments.
- [`edit_{$post_type}_per_page`](https://developer.wordpress.org/reference/hooks/edit_post_type_per_page/) - Filters the number of items per page to show for a specific 'per_page' type.
- [`enable_post_by_email_configuration`](https://developer.wordpress.org/reference/hooks/enable_post_by_email_configuration/) - Filters whether the post-by-email functionality is enabled.
- [`enable_update_services_configuration`](https://developer.wordpress.org/reference/hooks/enable_update_services_configuration/) - Filters whether to enable the Update Services section in the Writing settings screen.
- [`get_avatar_comment_types`](https://developer.wordpress.org/reference/hooks/get_avatar_comment_types/) - Filters the list of allowed comment types for retrieving avatars.
- [`get_calendar`](https://developer.wordpress.org/reference/hooks/get_calendar/) - Filters the HTML calendar output.
- [`get_shortlink`](https://developer.wordpress.org/reference/hooks/get_shortlink/) - Filters the shortlink for a post.
- [`get_the_date`](https://developer.wordpress.org/reference/hooks/get_the_date/) - Filters the date of the post.
- [`getimagesize_mimes_to_exts`](https://developer.wordpress.org/reference/hooks/getimagesize_mimes_to_exts/) - Filters the list mapping image mime types to their respective extensions.
- [`home_url`](https://developer.wordpress.org/reference/hooks/home_url/) - Filters the home URL.
- [`kses_allowed_protocols`](https://developer.wordpress.org/reference/hooks/kses_allowed_protocols/) - Filters the list of protocols allowed in HTML attributes.
- [`login_form_bottom`](https://developer.wordpress.org/reference/hooks/login_form_bottom/) - Filters content to display at the bottom of the login form.
- [`login_form_defaults`](https://developer.wordpress.org/reference/hooks/login_form_defaults/) - Filters the default login form output arguments.
- [`login_form_middle`](https://developer.wordpress.org/reference/hooks/login_form_middle/) - Filters content to display in the middle of the login form.
- [`login_form_top`](https://developer.wordpress.org/reference/hooks/login_form_top/) - Filters content to display at the top of the login form.
- [`login_redirect`](https://developer.wordpress.org/reference/hooks/login_redirect/) - Filters the login redirect URL.
- [`lostpassword_redirect`](https://developer.wordpress.org/reference/hooks/lostpassword_redirect/) - Filters the URL redirected to after submitting the lostpassword/retrievepassword form.
- [`manage_{$post_type}_posts_columns`](https://developer.wordpress.org/reference/hooks/manage_post_type_posts_columns/) - Filters the columns displayed in the Posts list table for a specific post type.
- [`manage_{$screen->id}_columns`](https://developer.wordpress.org/reference/hooks/manage_screen-id_columns/) - Filters the column headers for a list table on a specific screen.
- [`ms_site_check`](https://developer.wordpress.org/reference/hooks/ms_site_check/) - Filters checking the status of the current blog.
- [`nav_menu_attr_title`](https://developer.wordpress.org/reference/hooks/nav_menu_attr_title/) - Filters a navigation menu item's title attribute.
- [`nav_menu_css_class`](https://developer.wordpress.org/reference/hooks/nav_menu_css_class/) - Filters the CSS classes applied to a menu item's list item element.
- [`nav_menu_description`](https://developer.wordpress.org/reference/hooks/nav_menu_description/) - Filters a navigation menu item's description.
- [`nav_menu_item_id`](https://developer.wordpress.org/reference/hooks/nav_menu_item_id/) (3.0.1) - Filters the ID attribute applied to a menu item's list item element.
- [`nav_menu_meta_box_object`](https://developer.wordpress.org/reference/hooks/nav_menu_meta_box_object/) - Filters whether a menu items meta box will be added for the current object type.
- [`network_admin_url`](https://developer.wordpress.org/reference/hooks/network_admin_url/) - Filters the network admin URL.
- [`network_home_url`](https://developer.wordpress.org/reference/hooks/network_home_url/) - Filters the network home URL.
- [`network_site_url`](https://developer.wordpress.org/reference/hooks/network_site_url/) - Filters the network site URL.
- [`override_unload_textdomain`](https://developer.wordpress.org/reference/hooks/override_unload_textdomain/) - Filters whether to override the text domain unloading.
- [`paginate_links`](https://developer.wordpress.org/reference/hooks/paginate_links/) - Filters the paginated links for the given archive pages.
- [`post_type_link`](https://developer.wordpress.org/reference/hooks/post_type_link/) - Filters the permalink for a post of a custom post type.
- [`post_updated_messages`](https://developer.wordpress.org/reference/hooks/post_updated_messages/) - Filters the post updated messages.
- [`posts_search`](https://developer.wordpress.org/reference/hooks/posts_search/) - Filters the search SQL that is used in the WHERE clause of WP_Query.
- [`pre_get_shortlink`](https://developer.wordpress.org/reference/hooks/pre_get_shortlink/) - Filters whether to preempt generating a shortlink for the given post.
- [`pre_insert_term`](https://developer.wordpress.org/reference/hooks/pre_insert_term/) - Filters a term before it is sanitized and inserted into the database.
- [`pre_post_link`](https://developer.wordpress.org/reference/hooks/pre_post_link/) - Filters the permalink structure for a post before token replacement occurs.
- [`pre_set_site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_set_site_transient_transient/) - Filters the value of a specific site transient before it is set.
- [`pre_set_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_set_transient_transient/) - Filters a specific transient before its value is set.
- [`privacy_on_link_text`](https://developer.wordpress.org/reference/hooks/privacy_on_link_text/) - Filters the link label for the 'Search engines discouraged' message displayed in the 'At a Glance' dashboard widget.
- [`privacy_on_link_title`](https://developer.wordpress.org/reference/hooks/privacy_on_link_title/) - Filters the link title attribute for the 'Search engines discouraged' message displayed in the 'At a Glance' dashboard widget.
- [`random_password`](https://developer.wordpress.org/reference/hooks/random_password/) - Filters the randomly-generated password.
- [`registration_redirect`](https://developer.wordpress.org/reference/hooks/registration_redirect/) - Filters the registration redirect URL.
- [`robots_txt`](https://developer.wordpress.org/reference/hooks/robots_txt/) - Filters the robots.txt output.
- [`sanitize_key`](https://developer.wordpress.org/reference/hooks/sanitize_key/) - Filters a sanitized key string.
- [`screen_settings`](https://developer.wordpress.org/reference/hooks/screen_settings/) - Filters the screen settings text displayed in the Screen Options tab.
- [`search_link`](https://developer.wordpress.org/reference/hooks/search_link/) - Filters the search permalink.
- [`shake_error_codes`](https://developer.wordpress.org/reference/hooks/shake_error_codes/) - Filters the error codes array for shaking the login form.
- [`show_advanced_plugins`](https://developer.wordpress.org/reference/hooks/show_advanced_plugins/) - Filters whether to display the advanced plugins list table.
- [`signup_another_blog_init`](https://developer.wordpress.org/reference/hooks/signup_another_blog_init/) - Filters the default site sign-up variables.
- [`signup_blog_init`](https://developer.wordpress.org/reference/hooks/signup_blog_init/) - Filters the default site creation variables for the site sign-up form.
- [`signup_user_init`](https://developer.wordpress.org/reference/hooks/signup_user_init/) - Filters the default user variables used on the user sign-up form.
- [`subdirectory_reserved_names`](https://developer.wordpress.org/reference/hooks/subdirectory_reserved_names/) - Filters reserved site names on a sub-directory Multisite installation.
- [`tables_to_repair`](https://developer.wordpress.org/reference/hooks/tables_to_repair/) - Filters additional database tables to repair.
- [`taxonomy_feed_link`](https://developer.wordpress.org/reference/hooks/taxonomy_feed_link/) - Filters the feed link for a taxonomy other than 'category' or 'post_tag'.
- [`template_include`](https://developer.wordpress.org/reference/hooks/template_include/) - Filters the path of the current template before including it.
- [`the_feed_link`](https://developer.wordpress.org/reference/hooks/the_feed_link/) - Filters the feed link anchor tag.
- [`the_shortlink`](https://developer.wordpress.org/reference/hooks/the_shortlink/) - Filters the short link anchor tag for a post.
- [`unzip_file_use_ziparchive`](https://developer.wordpress.org/reference/hooks/unzip_file_use_ziparchive/) - Filters whether to use ZipArchive to unzip archives.
- [`update_bulk_plugins_complete_actions`](https://developer.wordpress.org/reference/hooks/update_bulk_plugins_complete_actions/) - Filters the list of action links available following bulk plugin updates.
- [`update_bulk_theme_complete_actions`](https://developer.wordpress.org/reference/hooks/update_bulk_theme_complete_actions/) - Filters the list of action links available following bulk theme updates.
- [`walker_nav_menu_start_el`](https://developer.wordpress.org/reference/hooks/walker_nav_menu_start_el/) - Filters a menu item's starting output.
- [`wp_check_filetype_and_ext`](https://developer.wordpress.org/reference/hooks/wp_check_filetype_and_ext/) - Filters the "real" file type of the given file.
- [`wp_die_handler`](https://developer.wordpress.org/reference/hooks/wp_die_handler/) - Filters the callback for killing WordPress execution for all non-Ajax, non-JSON, non-XML requests.
- [`wp_edit_nav_menu_walker`](https://developer.wordpress.org/reference/hooks/wp_edit_nav_menu_walker/) - Filters the Walker class used when adding nav menu items.
- [`wp_get_nav_menu_items`](https://developer.wordpress.org/reference/hooks/wp_get_nav_menu_items/) - Filters the navigation menu items being returned.
- [`wp_get_nav_menus`](https://developer.wordpress.org/reference/hooks/wp_get_nav_menus/) - Filters the navigation menu objects being returned.
- [`wp_link_pages_args`](https://developer.wordpress.org/reference/hooks/wp_link_pages_args/) - Filters the arguments used in retrieving page links for paginated posts.
- [`wp_nav_menu`](https://developer.wordpress.org/reference/hooks/wp_nav_menu/) - Filters the HTML content for navigation menus.
- [`wp_nav_menu_args`](https://developer.wordpress.org/reference/hooks/wp_nav_menu_args/) - Filters the arguments used to display a navigation menu.
- [`wp_nav_menu_container_allowedtags`](https://developer.wordpress.org/reference/hooks/wp_nav_menu_container_allowedtags/) - Filters the list of HTML tags that are valid for use as menu containers.
- [`wp_nav_menu_items`](https://developer.wordpress.org/reference/hooks/wp_nav_menu_items/) - Filters the HTML list content for navigation menus.
- [`wp_nav_menu_{$menu->slug}_items`](https://developer.wordpress.org/reference/hooks/wp_nav_menu_menu-slug_items/) - Filters the HTML list content for a specific navigation menu.
- [`wp_setup_nav_menu_item`](https://developer.wordpress.org/reference/hooks/wp_setup_nav_menu_item/) - Filters a navigation menu item object.
- [`wp_signup_location`](https://developer.wordpress.org/reference/hooks/wp_signup_location/) - Filters the Multisite sign up URL.
- [`wp_upload_bits`](https://developer.wordpress.org/reference/hooks/wp_upload_bits/) - Filters whether to treat the upload bits as an error.
- [`wpmu_active_signup`](https://developer.wordpress.org/reference/hooks/wpmu_active_signup/) - Filters the type of site sign-up.
- [`{$taxonomy}_row_actions`](https://developer.wordpress.org/reference/hooks/taxonomy_row_actions/) - Filters the action links displayed for each term in the terms list table.
- [`{$type}_upload_iframe_src`](https://developer.wordpress.org/reference/hooks/type_upload_iframe_src/) - Filters the upload iframe source URL for a specific media type.

### Changes

- [`tag_row_actions`](https://developer.wordpress.org/reference/hooks/tag_row_actions/) - Deprecated in favor of {@see '{$taxonomy}_row_actions'} filter.
- [`widget_tag_cloud_args`](https://developer.wordpress.org/reference/hooks/widget_tag_cloud_args/) - Added taxonomy drop-down.

## WordPress 2.9

### New Actions

- [`activate_plugin`](https://developer.wordpress.org/reference/hooks/activate_plugin/) - Fires before a plugin is activated.
- [`activated_plugin`](https://developer.wordpress.org/reference/hooks/activated_plugin/) - Fires after a plugin has been activated.
- [`add_option`](https://developer.wordpress.org/reference/hooks/add_option/) - Fires before an option is added.
- [`add_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/add_site_option_option/) - Fires after a specific network option has been successfully added.
- [`add_term_relationship`](https://developer.wordpress.org/reference/hooks/add_term_relationship/) - Fires immediately before an object-term relationship is added.
- [`added_option`](https://developer.wordpress.org/reference/hooks/added_option/) - Fires after an option has been added.
- [`added_term_relationship`](https://developer.wordpress.org/reference/hooks/added_term_relationship/) - Fires immediately after an object-term relationship is added.
- [`added_{$meta_type}_meta`](https://developer.wordpress.org/reference/hooks/added_meta_type_meta/) - Fires immediately after meta of a specific type is added.
- [`admin_head-media-upload-popup`](https://developer.wordpress.org/reference/hooks/admin_head-media-upload-popup/) - Fires when scripts enqueued for the admin header for the legacy (pre-3.5.0) media upload popup are printed.
- [`admin_print_scripts-media-upload-popup`](https://developer.wordpress.org/reference/hooks/admin_print_scripts-media-upload-popup/) - Fires when admin scripts enqueued for the legacy (pre-3.5.0) media upload popup are printed.
- [`admin_print_styles-media-upload-popup`](https://developer.wordpress.org/reference/hooks/admin_print_styles-media-upload-popup/) - Fires when admin styles enqueued for the legacy (pre-3.5.0) media upload popup are printed.
- [`begin_fetch_post_thumbnail_html`](https://developer.wordpress.org/reference/hooks/begin_fetch_post_thumbnail_html/) - Fires before fetching the post thumbnail HTML.
- [`comment_on_password_protected`](https://developer.wordpress.org/reference/hooks/comment_on_password_protected/) - Fires when a comment is attempted on a password-protected post.
- [`comment_on_trash`](https://developer.wordpress.org/reference/hooks/comment_on_trash/) - Fires when a comment is attempted on a trashed post.
- [`core_upgrade_preamble`](https://developer.wordpress.org/reference/hooks/core_upgrade_preamble/) - Fires after the core, plugin, and theme update tables.
- [`deactivate_plugin`](https://developer.wordpress.org/reference/hooks/deactivate_plugin/) - Fires before a plugin is deactivated.
- [`deactivated_plugin`](https://developer.wordpress.org/reference/hooks/deactivated_plugin/) - Fires after a plugin is deactivated.
- [`delete_option`](https://developer.wordpress.org/reference/hooks/delete_option/) - Fires immediately before an option is deleted.
- [`delete_postmeta`](https://developer.wordpress.org/reference/hooks/delete_postmeta/) - Fires immediately before deleting metadata for a post.
- [`delete_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/delete_site_option_option/) - Fires after a specific network option has been deleted.
- [`delete_term_relationships`](https://developer.wordpress.org/reference/hooks/delete_term_relationships/) - Fires immediately before an object-term relationship is deleted.
- [`delete_term_taxonomy`](https://developer.wordpress.org/reference/hooks/delete_term_taxonomy/) - Fires immediately before a term taxonomy ID is deleted.
- [`deleted_comment`](https://developer.wordpress.org/reference/hooks/deleted_comment/) - Fires immediately after a comment is deleted from the database.
- [`deleted_option`](https://developer.wordpress.org/reference/hooks/deleted_option/) - Fires after an option has been deleted.
- [`deleted_postmeta`](https://developer.wordpress.org/reference/hooks/deleted_postmeta/) - Fires immediately after deleting metadata for a post.
- [`deleted_term_relationships`](https://developer.wordpress.org/reference/hooks/deleted_term_relationships/) - Fires immediately after an object-term relationship is deleted.
- [`deleted_term_taxonomy`](https://developer.wordpress.org/reference/hooks/deleted_term_taxonomy/) - Fires immediately after a term taxonomy ID is deleted.
- [`deleted_user`](https://developer.wordpress.org/reference/hooks/deleted_user/) - Fires immediately after a user is deleted from the site.
- [`deleted_{$meta_type}_meta`](https://developer.wordpress.org/reference/hooks/deleted_meta_type_meta/) - Fires immediately after deleting metadata of a specific type.
- [`edit_term_taxonomies`](https://developer.wordpress.org/reference/hooks/edit_term_taxonomies/) - Fires immediately before a term to delete's children are reassigned a parent.
- [`edit_term_taxonomy`](https://developer.wordpress.org/reference/hooks/edit_term_taxonomy/) - Fires immediate before a term-taxonomy relationship is updated.
- [`edit_terms`](https://developer.wordpress.org/reference/hooks/edit_terms/) - Fires immediately before the given terms are edited.
- [`edited_term_taxonomies`](https://developer.wordpress.org/reference/hooks/edited_term_taxonomies/) - Fires immediately after a term to delete's children are reassigned a parent.
- [`edited_term_taxonomy`](https://developer.wordpress.org/reference/hooks/edited_term_taxonomy/) - Fires immediately after a term-taxonomy relationship is updated.
- [`edited_terms`](https://developer.wordpress.org/reference/hooks/edited_terms/) - Fires immediately after a term is updated in the database, but before its term-taxonomy relationship is updated.
- [`end_fetch_post_thumbnail_html`](https://developer.wordpress.org/reference/hooks/end_fetch_post_thumbnail_html/) - Fires after fetching the post thumbnail HTML.
- [`load_textdomain`](https://developer.wordpress.org/reference/hooks/load_textdomain/) - Fires before the MO translation file is loaded.
- [`post_submitbox_misc_actions`](https://developer.wordpress.org/reference/hooks/post_submitbox_misc_actions/) - Fires after the post time/date setting in the Publish meta box.
- [`set_user_role`](https://developer.wordpress.org/reference/hooks/set_user_role/) - Fires after the user's role has changed.
- [`spam_comment`](https://developer.wordpress.org/reference/hooks/spam_comment/) - Fires immediately before a comment is marked as Spam.
- [`spammed_comment`](https://developer.wordpress.org/reference/hooks/spammed_comment/) - Fires immediately after a comment is marked as Spam.
- [`trash_comment`](https://developer.wordpress.org/reference/hooks/trash_comment/) - Fires immediately before a comment is sent to the Trash.
- [`trash_post_comments`](https://developer.wordpress.org/reference/hooks/trash_post_comments/) - Fires before comments are sent to the Trash.
- [`trashed_comment`](https://developer.wordpress.org/reference/hooks/trashed_comment/) - Fires immediately after a comment is sent to Trash.
- [`trashed_post`](https://developer.wordpress.org/reference/hooks/trashed_post/) - Fires after a post is sent to the Trash.
- [`trashed_post_comments`](https://developer.wordpress.org/reference/hooks/trashed_post_comments/) - Fires after comments are sent to the Trash.
- [`unspam_comment`](https://developer.wordpress.org/reference/hooks/unspam_comment/) - Fires immediately before a comment is unmarked as Spam.
- [`unspammed_comment`](https://developer.wordpress.org/reference/hooks/unspammed_comment/) - Fires immediately after a comment is unmarked as Spam.
- [`untrash_comment`](https://developer.wordpress.org/reference/hooks/untrash_comment/) - Fires immediately before a comment is restored from the Trash.
- [`untrash_post`](https://developer.wordpress.org/reference/hooks/untrash_post/) - Fires before a post is restored from the Trash.
- [`untrash_post_comments`](https://developer.wordpress.org/reference/hooks/untrash_post_comments/) - Fires before comments are restored for a post from the Trash.
- [`untrashed_comment`](https://developer.wordpress.org/reference/hooks/untrashed_comment/) - Fires immediately after a comment is restored from the Trash.
- [`untrashed_post`](https://developer.wordpress.org/reference/hooks/untrashed_post/) - Fires after a post is restored from the Trash.
- [`untrashed_post_comments`](https://developer.wordpress.org/reference/hooks/untrashed_post_comments/) - Fires after comments are restored for a post from the Trash.
- [`update_option`](https://developer.wordpress.org/reference/hooks/update_option/) - Fires immediately before an option value is updated.
- [`update_postmeta`](https://developer.wordpress.org/reference/hooks/update_postmeta/) - Fires immediately before updating a post's metadata.
- [`update_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/update_site_option_option/) - Fires after the value of a specific network option has been successfully updated.
- [`update_{$meta_type}_meta`](https://developer.wordpress.org/reference/hooks/update_meta_type_meta/) - Fires immediately before updating metadata of a specific type.
- [`updated_option`](https://developer.wordpress.org/reference/hooks/updated_option/) - Fires after the value of an option has been successfully updated.
- [`updated_postmeta`](https://developer.wordpress.org/reference/hooks/updated_postmeta/) - Fires immediately after updating a post's metadata.
- [`updated_{$meta_type}_meta`](https://developer.wordpress.org/reference/hooks/updated_meta_type_meta/) - Fires immediately after updating metadata of a specific type.
- [`wp-mail.php`](https://developer.wordpress.org/reference/hooks/wp-mail.php/) - Fires to allow a plugin to do a complete takeover of Post by Email.

### New Filters

- [`_wp_relative_upload_path`](https://developer.wordpress.org/reference/hooks/_wp_relative_upload_path/) - Filters the relative path to an uploaded file.
- [`admin_post_thumbnail_html`](https://developer.wordpress.org/reference/hooks/admin_post_thumbnail_html/) - Filters the admin post thumbnail HTML markup to return.
- [`auth_redirect_scheme`](https://developer.wordpress.org/reference/hooks/auth_redirect_scheme/) - Filters the authentication redirect scheme.
- [`edit_user_{$field}`](https://developer.wordpress.org/reference/hooks/edit_user_field/) - Filters a user field value in the 'edit' context.
- [`embed_cache_oembed_types`](https://developer.wordpress.org/reference/hooks/embed_cache_oembed_types/) - Filters the array of post types to cache oEmbed results for.
- [`embed_defaults`](https://developer.wordpress.org/reference/hooks/embed_defaults/) - Filters the default array of embed dimensions.
- [`embed_handler_html`](https://developer.wordpress.org/reference/hooks/embed_handler_html/) - Filters the returned embed HTML.
- [`embed_maybe_make_link`](https://developer.wordpress.org/reference/hooks/embed_maybe_make_link/) - Filters the returned, maybe-linked embed URL.
- [`embed_oembed_discover`](https://developer.wordpress.org/reference/hooks/embed_oembed_discover/) - Filters whether to inspect the given URL for discoverable link tags.
- [`embed_oembed_html`](https://developer.wordpress.org/reference/hooks/embed_oembed_html/) - Filters the cached oEmbed HTML.
- [`excerpt_more`](https://developer.wordpress.org/reference/hooks/excerpt_more/) - Filters the string in the "more" link displayed after a trimmed excerpt.
- [`extra_{$context}_headers`](https://developer.wordpress.org/reference/hooks/extra_context_headers/) - Filters extra file headers by context.
- [`fs_ftp_connection_types`](https://developer.wordpress.org/reference/hooks/fs_ftp_connection_types/) - Filters the connection types to output to the filesystem credentials form.
- [`get_delete_post_link`](https://developer.wordpress.org/reference/hooks/get_delete_post_link/) - Filters the post delete link.
- [`get_sample_permalink_html`](https://developer.wordpress.org/reference/hooks/get_sample_permalink_html/) - Filters the sample permalink HTML markup.
- [`http_response`](https://developer.wordpress.org/reference/hooks/http_response/) - Filters a successful HTTP API response immediately before the response is returned.
- [`intermediate_image_sizes_advanced`](https://developer.wordpress.org/reference/hooks/intermediate_image_sizes_advanced/) - Filters the image sizes automatically generated when uploading an image.
- [`load_default_embeds`](https://developer.wordpress.org/reference/hooks/load_default_embeds/) - Filters whether to load the default embed handlers.
- [`load_image_to_edit`](https://developer.wordpress.org/reference/hooks/load_image_to_edit/) - Filters the current image being loaded for editing.
- [`load_image_to_edit_path`](https://developer.wordpress.org/reference/hooks/load_image_to_edit_path/) - Filters the returned path or URL of the current image.
- [`load_textdomain_mofile`](https://developer.wordpress.org/reference/hooks/load_textdomain_mofile/) - Filters MO file path for loading translations for a specific text domain.
- [`oembed_dataparse`](https://developer.wordpress.org/reference/hooks/oembed_dataparse/) - Filters the returned oEmbed HTML.
- [`oembed_fetch_url`](https://developer.wordpress.org/reference/hooks/oembed_fetch_url/) - Filters the oEmbed URL to be fetched.
- [`oembed_linktypes`](https://developer.wordpress.org/reference/hooks/oembed_linktypes/) - Filters the link types that contain oEmbed provider URLs.
- [`oembed_providers`](https://developer.wordpress.org/reference/hooks/oembed_providers/) - Filters the list of sanctioned oEmbed providers.
- [`oembed_result`](https://developer.wordpress.org/reference/hooks/oembed_result/) - Filters the HTML returned by the oEmbed provider.
- [`override_load_textdomain`](https://developer.wordpress.org/reference/hooks/override_load_textdomain/) - Filters whether to override the .mo file loading.
- [`pingback_useragent`](https://developer.wordpress.org/reference/hooks/pingback_useragent/) - Filters the user agent sent when pinging-back a URL.
- [`post_thumbnail_html`](https://developer.wordpress.org/reference/hooks/post_thumbnail_html/) - Filters the post thumbnail HTML.
- [`post_thumbnail_size`](https://developer.wordpress.org/reference/hooks/post_thumbnail_size/) - Filters the post thumbnail size.
- [`pre_add_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_add_site_option_option/) - Filters the value of a specific network option before it is added.
- [`pre_http_request`](https://developer.wordpress.org/reference/hooks/pre_http_request/) - Filters the preemptive return value of an HTTP request.
- [`pre_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_site_option_option/) - Filters the value of an existing network option before it is retrieved.
- [`pre_site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_site_transient_transient/) - Filters the value of an existing site transient before it is retrieved.
- [`pre_update_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_update_site_option_option/) - Filters a specific network option before its value is updated.
- [`pre_user_{$field}`](https://developer.wordpress.org/reference/hooks/pre_user_field/) - Filters the value of a user field in the 'db' context.
- [`redirect_post_location`](https://developer.wordpress.org/reference/hooks/redirect_post_location/) - Filters the post redirect destination URL.
- [`sanitize_text_field`](https://developer.wordpress.org/reference/hooks/sanitize_text_field/) - Filters a sanitized text field string.
- [`site_option_{$option}`](https://developer.wordpress.org/reference/hooks/site_option_option/) - Filters the value of an existing network option.
- [`site_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/site_transient_transient/) - Filters the value of an existing site transient.
- [`smilies_src`](https://developer.wordpress.org/reference/hooks/smilies_src/) - Filters the Smiley image URL before it's used in the image element.
- [`the_author`](https://developer.wordpress.org/reference/hooks/the_author/) - Filters the display name of the current post's author.
- [`the_author_posts_link`](https://developer.wordpress.org/reference/hooks/the_author_posts_link/) - Filters the link to the author page of the author of the current post.
- [`the_content_feed`](https://developer.wordpress.org/reference/hooks/the_content_feed/) - Filters the post content for use in feeds.
- [`the_terms`](https://developer.wordpress.org/reference/hooks/the_terms/) - Filters the list of terms to display.
- [`upload_per_page`](https://developer.wordpress.org/reference/hooks/upload_per_page/) - Filters the number of items to list per page when listing media items.
- [`user_contactmethods`](https://developer.wordpress.org/reference/hooks/user_contactmethods/) - Filters the user contact methods.
- [`user_{$field}`](https://developer.wordpress.org/reference/hooks/user_field/) - Filters the value of a user field in a standard context.
- [`user_{$name}_label`](https://developer.wordpress.org/reference/hooks/user_name_label/) - Filters a user contactmethod label.
- [`{$action}_prefilter`](https://developer.wordpress.org/reference/hooks/action_prefilter/) - Filters the data for a file before it is uploaded to WordPress.
- [`{$option}`](https://developer.wordpress.org/reference/hooks/option/) - Filters the number of items to be displayed on each page of the list table.

### Changes

- [`{$action}_prefilter`](https://developer.wordpress.org/reference/hooks/action_prefilter/) - as 'wp_handle_upload_prefilter'.
- [`add_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/add_site_option_option/) - As "add_site<em>option</em>{$key}"
- [`delete_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/delete_site_option_option/) - As "delete_site<em>option</em>{$key}"
- [`pre_add_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_add_site_option_option/) - As 'pre_add_site<em>option</em>' . $key
- [`pre_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_site_option_option/) - As 'pre_site<em>option</em>' . $key
- [`pre_update_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_update_site_option_option/) - As 'pre_update_site<em>option</em>' . $key
- [`site_option_{$option}`](https://developer.wordpress.org/reference/hooks/site_option_option/) - As 'site<em>option</em>' . $key
- [`update_site_option_{$option}`](https://developer.wordpress.org/reference/hooks/update_site_option_option/) - As "update_site<em>option</em>{$key}"

## WordPress 2.8

### New Actions

- [`admin_enqueue_scripts`](https://developer.wordpress.org/reference/hooks/admin_enqueue_scripts/) - Fires when enqueuing scripts for all admin pages.
- [`admin_footer-{$hook_suffix}`](https://developer.wordpress.org/reference/hooks/admin_footer-hook_suffix/) - Prints scripts or data after the default footer scripts.
- [`admin_print_footer_scripts`](https://developer.wordpress.org/reference/hooks/admin_print_footer_scripts/) - Prints any scripts and data queued for the footer.
- [`after_db_upgrade`](https://developer.wordpress.org/reference/hooks/after_db_upgrade/) - Fires on the next page load after a successful DB upgrade.
- [`atom_comments_ns`](https://developer.wordpress.org/reference/hooks/atom_comments_ns/) - Fires inside the feed tag in the Atom comment feed.
- [`auth_redirect`](https://developer.wordpress.org/reference/hooks/auth_redirect/) - Fires before the authentication redirect.
- [`comments_atom_head`](https://developer.wordpress.org/reference/hooks/comments_atom_head/) - Fires at the end of the Atom comment feed header.
- [`http_api_curl`](https://developer.wordpress.org/reference/hooks/http_api_curl/) - Fires before the cURL request is executed.
- [`http_api_debug`](https://developer.wordpress.org/reference/hooks/http_api_debug/) - Fires after an HTTP API response is received and before the response is returned.
- [`in_plugin_update_message-{$file}`](https://developer.wordpress.org/reference/hooks/in_plugin_update_message-file/) - Fires at the end of the update message container in each row of the plugins list table.
- [`in_widget_form`](https://developer.wordpress.org/reference/hooks/in_widget_form/) - Fires at the end of the widget control form.
- [`install_themes_pre_{$tab}`](https://developer.wordpress.org/reference/hooks/install_themes_pre_tab/) - Fires before each of the tabs are rendered on the Install Themes page.
- [`install_themes_table_header`](https://developer.wordpress.org/reference/hooks/install_themes_table_header/) - Fires in the Install Themes list table header.
- [`install_themes_{$tab}`](https://developer.wordpress.org/reference/hooks/install_themes_tab/) - Fires at the top of each of the tabs on the Install Themes page.
- [`load-widgets.php`](https://developer.wordpress.org/reference/hooks/load-widgets.php/) - Fires early when editing the widgets displayed in sidebars.
- [`login_form_{$action}`](https://developer.wordpress.org/reference/hooks/login_form_action/) - Fires before a specified login form action.
- [`manage_comments_custom_column`](https://developer.wordpress.org/reference/hooks/manage_comments_custom_column/) - Fires when the default column output is displayed for a single row.
- [`muplugins_loaded`](https://developer.wordpress.org/reference/hooks/muplugins_loaded/) - Fires once all must-use and network-activated plugins have loaded.
- [`permalink_structure_changed`](https://developer.wordpress.org/reference/hooks/permalink_structure_changed/) - Fires after the permalink structure is updated.
- [`pre_comment_on_post`](https://developer.wordpress.org/reference/hooks/pre_comment_on_post/) - Fires before a comment is posted.
- [`rss2_comments_ns`](https://developer.wordpress.org/reference/hooks/rss2_comments_ns/) - Fires at the end of the RSS root to add namespaces.
- [`set_object_terms`](https://developer.wordpress.org/reference/hooks/set_object_terms/) - Fires after an object's terms have been set.
- [`the_post`](https://developer.wordpress.org/reference/hooks/the_post/) - Fires once the post data has been set up.
- [`tool_box`](https://developer.wordpress.org/reference/hooks/tool_box/) - Fires at the end of the Tools Administration screen.
- [`update-custom_{$action}`](https://developer.wordpress.org/reference/hooks/update-custom_action/) - Fires when a custom plugin or theme update request is received.
- [`user_profile_update_errors`](https://developer.wordpress.org/reference/hooks/user_profile_update_errors/) - Fires before user profile update errors are returned.
- [`widgets.php`](https://developer.wordpress.org/reference/hooks/widgets.php/) - Fires early when editing the widgets displayed in sidebars.
- [`wp_ajax_nopriv_{$action}`](https://developer.wordpress.org/reference/hooks/wp_ajax_nopriv_action/) - Fires non-authenticated Ajax actions for logged-out users.
- [`wp_enqueue_scripts`](https://developer.wordpress.org/reference/hooks/wp_enqueue_scripts/) - Fires when scripts and styles are enqueued.
- [`wp_insert_comment`](https://developer.wordpress.org/reference/hooks/wp_insert_comment/) - Fires immediately after a comment is inserted into the database.
- [`wp_print_footer_scripts`](https://developer.wordpress.org/reference/hooks/wp_print_footer_scripts/) - Fires when footer scripts are printed.

### New Filters

- [`additional_capabilities_display`](https://developer.wordpress.org/reference/hooks/additional_capabilities_display/) - Filters whether to display additional capabilities for the user.
- [`admin_footer_text`](https://developer.wordpress.org/reference/hooks/admin_footer_text/) - Filters the "Thank you" text displayed in the admin footer.
- [`admin_url`](https://developer.wordpress.org/reference/hooks/admin_url/) - Filters the admin area URL.
- [`auth_cookie_expiration`](https://developer.wordpress.org/reference/hooks/auth_cookie_expiration/) - Filters the duration of the authentication cookie expiration period.
- [`authenticate`](https://developer.wordpress.org/reference/hooks/authenticate/) - Filters whether a set of user login credentials are valid.
- [`block_local_requests`](https://developer.wordpress.org/reference/hooks/block_local_requests/) - Filters whether to block local HTTP API requests.
- [`body_class`](https://developer.wordpress.org/reference/hooks/body_class/) - Filters the list of CSS body class names for the current post or page.
- [`comment_cookie_lifetime`](https://developer.wordpress.org/reference/hooks/comment_cookie_lifetime/) - Filters the lifetime of the comment cookie in seconds.
- [`comment_feed_limits`](https://developer.wordpress.org/reference/hooks/comment_feed_limits/) - Filters the LIMIT clause of the comments feed query before sending.
- [`comment_feed_orderby`](https://developer.wordpress.org/reference/hooks/comment_feed_orderby/) - Filters the ORDER BY clause of the comments feed query before sending.
- [`comment_moderation_headers`](https://developer.wordpress.org/reference/hooks/comment_moderation_headers/) - Filters the comment moderation email headers.
- [`content_url`](https://developer.wordpress.org/reference/hooks/content_url/) - Filters the URL to the content directory.
- [`core_version_check_locale`](https://developer.wordpress.org/reference/hooks/core_version_check_locale/) - Filters the locale requested for WordPress core translations.
- [`custom_menu_order`](https://developer.wordpress.org/reference/hooks/custom_menu_order/) - Filters whether to enable custom ordering of the administration menu.
- [`date_i18n`](https://developer.wordpress.org/reference/hooks/date_i18n/) - Filters the date formatted based on the locale.
- [`display_post_states`](https://developer.wordpress.org/reference/hooks/display_post_states/) - Filters the default post display states used in the posts list table.
- [`documentation_ignore_functions`](https://developer.wordpress.org/reference/hooks/documentation_ignore_functions/) - Filters the list of functions and classes to be ignored from the documentation lookup.
- [`edit_categories_per_page`](https://developer.wordpress.org/reference/hooks/edit_categories_per_page/) - Filters the number of terms displayed per page for the Categories list table.
- [`edit_posts_per_page`](https://developer.wordpress.org/reference/hooks/edit_posts_per_page/) - Filters the number of posts displayed per page when specifically listing "posts".
- [`edit_tags_per_page`](https://developer.wordpress.org/reference/hooks/edit_tags_per_page/) - Filters the number of terms displayed per page for the Tags list table.
- [`editable_extensions`](https://developer.wordpress.org/reference/hooks/editable_extensions/) - Filters the list of file types allowed for editing in the plugin file editor.
- [`editable_roles`](https://developer.wordpress.org/reference/hooks/editable_roles/) - Filters the list of editable roles.
- [`esc_html`](https://developer.wordpress.org/reference/hooks/esc_html/) - Filters a string cleaned and escaped for output in HTML.
- [`feed_content_type`](https://developer.wordpress.org/reference/hooks/feed_content_type/) - Filters the content type for a specific feed type.
- [`get_comment_link`](https://developer.wordpress.org/reference/hooks/get_comment_link/) - Filters the returned single comment permalink.
- [`get_post_modified_time`](https://developer.wordpress.org/reference/hooks/get_post_modified_time/) - Filters the localized time a post was last modified.
- [`get_terms_fields`](https://developer.wordpress.org/reference/hooks/get_terms_fields/) - Filters the fields to select in the terms query.
- [`get_terms_orderby`](https://developer.wordpress.org/reference/hooks/get_terms_orderby/) - Filters the ORDERBY clause of the terms query.
- [`get_the_author_{$field}`](https://developer.wordpress.org/reference/hooks/get_the_author_field/) - Filters the value of the requested user metadata.
- [`gettext_with_context`](https://developer.wordpress.org/reference/hooks/gettext_with_context/) - Filters text with its translation based on context information.
- [`https_local_ssl_verify`](https://developer.wordpress.org/reference/hooks/https_local_ssl_verify/) - Filters whether SSL should be verified for local HTTP API requests.
- [`https_ssl_verify`](https://developer.wordpress.org/reference/hooks/https_ssl_verify/) - Filters whether SSL should be verified for non-local requests.
- [`iis7_supports_permalinks`](https://developer.wordpress.org/reference/hooks/iis7_supports_permalinks/) - Filters whether IIS 7+ supports pretty permalinks.
- [`iis7_url_rewrite_rules`](https://developer.wordpress.org/reference/hooks/iis7_url_rewrite_rules/) - Filters the list of rewrite rules formatted for output to a web.config.
- [`image_send_to_editor_url`](https://developer.wordpress.org/reference/hooks/image_send_to_editor_url/) - Filters the image URL sent to the editor.
- [`includes_url`](https://developer.wordpress.org/reference/hooks/includes_url/) - Filters the URL to the includes directory.
- [`install_theme_complete_actions`](https://developer.wordpress.org/reference/hooks/install_theme_complete_actions/) - Filters the list of action links available following a single theme installation.
- [`install_themes_nonmenu_tabs`](https://developer.wordpress.org/reference/hooks/install_themes_nonmenu_tabs/) - Filters tabs not associated with a menu item on the Install Themes screen.
- [`install_themes_tabs`](https://developer.wordpress.org/reference/hooks/install_themes_tabs/) - Filters the tabs shown on the Add Themes screen.
- [`is_email`](https://developer.wordpress.org/reference/hooks/is_email/) - Filters whether an email address is valid.
- [`load_default_widgets`](https://developer.wordpress.org/reference/hooks/load_default_widgets/) - Filters whether to load the Widgets library.
- [`login_url`](https://developer.wordpress.org/reference/hooks/login_url/) - Filters the login URL.
- [`logout_url`](https://developer.wordpress.org/reference/hooks/logout_url/) - Filters the logout URL.
- [`lostpassword_url`](https://developer.wordpress.org/reference/hooks/lostpassword_url/) - Filters the Lost Password URL.
- [`manage_users_custom_column`](https://developer.wordpress.org/reference/hooks/manage_users_custom_column/) - Filters the display output of custom columns in the Users list table.
- [`manage_{$this->screen->taxonomy}_custom_column`](https://developer.wordpress.org/reference/hooks/manage_this-screen-taxonomy_custom_column/) - Filters the displayed columns in the terms list table.
- [`map_meta_cap`](https://developer.wordpress.org/reference/hooks/map_meta_cap/) - Filters the primitive capabilities required of the given user to satisfy the capability being checked.
- [`media_row_actions`](https://developer.wordpress.org/reference/hooks/media_row_actions/) - Filters the action links for each attachment in the Media list table.
- [`menu_order`](https://developer.wordpress.org/reference/hooks/menu_order/) - Filters the order of administration menu items.
- [`ngettext_with_context`](https://developer.wordpress.org/reference/hooks/ngettext_with_context/) - Filters the singular or plural form of a string with gettext context.
- [`no_texturize_shortcodes`](https://developer.wordpress.org/reference/hooks/no_texturize_shortcodes/) - Filters the list of shortcodes not to texturize.
- [`no_texturize_tags`](https://developer.wordpress.org/reference/hooks/no_texturize_tags/) - Filters the list of HTML elements not to texturize.
- [`nocache_headers`](https://developer.wordpress.org/reference/hooks/nocache_headers/) - Filters the cache-controlling HTTP headers that are used to prevent caching.
- [`number_format_i18n`](https://developer.wordpress.org/reference/hooks/number_format_i18n/) - Filters the number formatted based on the locale.
- [`page_css_class`](https://developer.wordpress.org/reference/hooks/page_css_class/) - Filters the list of CSS classes to include with each page item in the list.
- [`page_row_actions`](https://developer.wordpress.org/reference/hooks/page_row_actions/) - Filters the array of row action links on the Pages list table.
- [`plugin_row_meta`](https://developer.wordpress.org/reference/hooks/plugin_row_meta/) - Filters the array of row meta for each plugin in the Plugins list table.
- [`plugins_url`](https://developer.wordpress.org/reference/hooks/plugins_url/) - Filters the URL to the plugins directory.
- [`post_comments_feed_link_html`](https://developer.wordpress.org/reference/hooks/post_comments_feed_link_html/) - Filters the post comment feed link anchor tag.
- [`post_row_actions`](https://developer.wordpress.org/reference/hooks/post_row_actions/) - Filters the array of row action links on the Posts list table.
- [`pre_transient_{$transient}`](https://developer.wordpress.org/reference/hooks/pre_transient_transient/) - Filters the value of an existing transient before it is retrieved.
- [`print_admin_styles`](https://developer.wordpress.org/reference/hooks/print_admin_styles/) - Filters whether to print the admin styles.
- [`print_footer_scripts`](https://developer.wordpress.org/reference/hooks/print_footer_scripts/) - Filters whether to print the footer scripts.
- [`print_head_scripts`](https://developer.wordpress.org/reference/hooks/print_head_scripts/) - Filters whether to print the head scripts.
- [`private_title_format`](https://developer.wordpress.org/reference/hooks/private_title_format/) - Filters the text prepended to the post title of private posts.
- [`protected_title_format`](https://developer.wordpress.org/reference/hooks/protected_title_format/) - Filters the text prepended to the post title for protected posts.
- [`retrieve_password_message`](https://developer.wordpress.org/reference/hooks/retrieve_password_message/) - Filters the message body of the password reset mail.
- [`retrieve_password_title`](https://developer.wordpress.org/reference/hooks/retrieve_password_title/) - Filters the subject of the password reset email.
- [`safe_style_css`](https://developer.wordpress.org/reference/hooks/safe_style_css/) (2.8.1) - Filters the list of allowed CSS attributes.
- [`sanitize_email`](https://developer.wordpress.org/reference/hooks/sanitize_email/) - Filters a sanitized email address.
- [`sanitize_file_name`](https://developer.wordpress.org/reference/hooks/sanitize_file_name/) - Filters a sanitized filename string.
- [`sanitize_file_name_chars`](https://developer.wordpress.org/reference/hooks/sanitize_file_name_chars/) - Filters the list of characters to remove from a filename.
- [`sanitize_html_class`](https://developer.wordpress.org/reference/hooks/sanitize_html_class/) - Filters a sanitized HTML class string.
- [`screen_layout_columns`](https://developer.wordpress.org/reference/hooks/screen_layout_columns/) - Filters the array of screen layout columns.
- [`set-screen-option`](https://developer.wordpress.org/reference/hooks/set-screen-option/) - Filters a screen option value before it is set.
- [`tag_cloud_sort`](https://developer.wordpress.org/reference/hooks/tag_cloud_sort/) - Filters how the items in a tag cloud are sorted.
- [`tag_escape`](https://developer.wordpress.org/reference/hooks/tag_escape/) - Filters a string cleaned and escaped for output as an HTML tag.
- [`tag_row_actions`](https://developer.wordpress.org/reference/hooks/tag_row_actions/) - Filters the action links displayed for each term in the Tags list table.
- [`terms_to_edit`](https://developer.wordpress.org/reference/hooks/terms_to_edit/) - Filters the comma-separated list of terms available to edit.
- [`the_author_{$field}`](https://developer.wordpress.org/reference/hooks/the_author_field/) - Filters the value of the requested user metadata.
- [`the_content_more_link`](https://developer.wordpress.org/reference/hooks/the_content_more_link/) - Filters the Read More link text.
- [`the_modified_author`](https://developer.wordpress.org/reference/hooks/the_modified_author/) - Filters the display name of the author who last edited the current post.
- [`theme_action_links`](https://developer.wordpress.org/reference/hooks/theme_action_links/) - Filters the action links displayed for each theme in the Multisite themes list table.
- [`themes_api`](https://developer.wordpress.org/reference/hooks/themes_api/) - Filters whether to override the WordPress.org Themes API.
- [`themes_api_args`](https://developer.wordpress.org/reference/hooks/themes_api_args/) - Filters arguments used to query for installer pages from the WordPress.org Themes API.
- [`themes_api_result`](https://developer.wordpress.org/reference/hooks/themes_api_result/) - Filters the returned WordPress.org Themes API response.
- [`transient_{$transient}`](https://developer.wordpress.org/reference/hooks/transient_transient/) - Filters an existing transient's value.
- [`update_theme_complete_actions`](https://developer.wordpress.org/reference/hooks/update_theme_complete_actions/) - Filters the list of action links available following a single theme update.
- [`upgrader_clear_destination`](https://developer.wordpress.org/reference/hooks/upgrader_clear_destination/) - Filters whether the upgrader cleared the destination.
- [`upgrader_post_install`](https://developer.wordpress.org/reference/hooks/upgrader_post_install/) - Filters the installation response after the installation has finished.
- [`upgrader_pre_install`](https://developer.wordpress.org/reference/hooks/upgrader_pre_install/) - Filters the installation response before the installation has started.
- [`upgrader_source_selection`](https://developer.wordpress.org/reference/hooks/upgrader_source_selection/) - Filters the source file location for the upgrade package.
- [`user_row_actions`](https://developer.wordpress.org/reference/hooks/user_row_actions/) - Filters the action links displayed under each user in the Users list table.
- [`widget_archives_args`](https://developer.wordpress.org/reference/hooks/widget_archives_args/) - Filters the arguments for the Archives widget.
- [`widget_archives_dropdown_args`](https://developer.wordpress.org/reference/hooks/widget_archives_dropdown_args/) - Filters the arguments for the Archives widget drop-down.
- [`widget_categories_args`](https://developer.wordpress.org/reference/hooks/widget_categories_args/) - Filters the arguments for the Categories widget.
- [`widget_categories_dropdown_args`](https://developer.wordpress.org/reference/hooks/widget_categories_dropdown_args/) - Filters the arguments for the Categories widget drop-down.
- [`widget_display_callback`](https://developer.wordpress.org/reference/hooks/widget_display_callback/) - Filters the settings for a particular widget instance.
- [`widget_form_callback`](https://developer.wordpress.org/reference/hooks/widget_form_callback/) - Filters the widget instance's settings before displaying the control form.
- [`widget_pages_args`](https://developer.wordpress.org/reference/hooks/widget_pages_args/) - Filters the arguments for the Pages widget.
- [`widget_tag_cloud_args`](https://developer.wordpress.org/reference/hooks/widget_tag_cloud_args/) - Filters the taxonomy used in the Tag Cloud widget.
- [`widget_update_callback`](https://developer.wordpress.org/reference/hooks/widget_update_callback/) - Filters a widget's settings before saving.
- [`wp_feed_cache_transient_lifetime`](https://developer.wordpress.org/reference/hooks/wp_feed_cache_transient_lifetime/) - Filters the transient lifetime of the feed cache.
- [`wp_get_attachment_image_attributes`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_image_attributes/) - Filters the list of attachment image attributes.
- [`wp_get_object_terms`](https://developer.wordpress.org/reference/hooks/wp_get_object_terms/) - Filters the terms for a given object or objects.
- [`wp_headers`](https://developer.wordpress.org/reference/hooks/wp_headers/) - Filters the HTTP headers before they're sent to the browser.
- [`wp_mail_original_content`](https://developer.wordpress.org/reference/hooks/wp_mail_original_content/) - Filters the original content of the email.
- [`wp_trim_excerpt`](https://developer.wordpress.org/reference/hooks/wp_trim_excerpt/) - Filters the trimmed excerpt string.
- [`{$adjacent}_post_rel_link`](https://developer.wordpress.org/reference/hooks/adjacent_post_rel_link/) - Filters the adjacent post relational link.

### Changes

- [`get_footer`](https://developer.wordpress.org/reference/hooks/get_footer/) - The <code>$name</code> parameter was added.
- [`get_header`](https://developer.wordpress.org/reference/hooks/get_header/) - The <code>$name</code> parameter was added.
- [`get_sidebar`](https://developer.wordpress.org/reference/hooks/get_sidebar/) - The <code>$name</code> parameter was added.
- [`show_password_fields`](https://developer.wordpress.org/reference/hooks/show_password_fields/) - Added the <code>$profile_user</code> parameter.

## WordPress 2.7

### New Actions

- [`after_plugin_row_{$plugin_file}`](https://developer.wordpress.org/reference/hooks/after_plugin_row_plugin_file/) - Fires after each specific row in the Plugins list table.
- [`auth_cookie_bad_hash`](https://developer.wordpress.org/reference/hooks/auth_cookie_bad_hash/) - Fires if a bad authentication cookie hash is encountered.
- [`auth_cookie_bad_username`](https://developer.wordpress.org/reference/hooks/auth_cookie_bad_username/) - Fires if a bad username is entered in the user authentication process.
- [`auth_cookie_expired`](https://developer.wordpress.org/reference/hooks/auth_cookie_expired/) - Fires once an authentication cookie has expired.
- [`auth_cookie_malformed`](https://developer.wordpress.org/reference/hooks/auth_cookie_malformed/) - Fires if an authentication cookie is malformed.
- [`auth_cookie_valid`](https://developer.wordpress.org/reference/hooks/auth_cookie_valid/) - Fires once an authentication cookie has been validated.
- [`bulk_edit_custom_box`](https://developer.wordpress.org/reference/hooks/bulk_edit_custom_box/) - Fires once for each column in Bulk Edit mode.
- [`clear_auth_cookie`](https://developer.wordpress.org/reference/hooks/clear_auth_cookie/) - Fires just before the authentication cookies are cleared.
- [`comment_{$new_status}_{$comment->comment_type}`](https://developer.wordpress.org/reference/hooks/comment_new_status_comment-comment_type/) - Fires when the status of a specific comment type is in transition.
- [`comment_{$old_status}_to_{$new_status}`](https://developer.wordpress.org/reference/hooks/comment_old_status_to_new_status/) - Fires when the comment status is in transition from one specific status to another.
- [`edit_user_profile_update`](https://developer.wordpress.org/reference/hooks/edit_user_profile_update/) - Fires before the page loads on the 'Edit User' screen.
- [`install_plugins_pre_{$tab}`](https://developer.wordpress.org/reference/hooks/install_plugins_pre_tab/) - Fires before each tab on the Install Plugins screen is loaded.
- [`install_plugins_table_header`](https://developer.wordpress.org/reference/hooks/install_plugins_table_header/) - Fires before the Plugin Install table header pagination is displayed.
- [`install_plugins_{$tab}`](https://developer.wordpress.org/reference/hooks/install_plugins_tab/) - Fires after the plugins list table in each tab of the Install Plugins screen.
- [`personal_options`](https://developer.wordpress.org/reference/hooks/personal_options/) - Fires at the end of the 'Personal Options' settings table on the user editing screen.
- [`post_submitbox_start`](https://developer.wordpress.org/reference/hooks/post_submitbox_start/) - Fires at the beginning of the publishing actions section of the Publish meta box.
- [`pre_get_search_form`](https://developer.wordpress.org/reference/hooks/pre_get_search_form/) - Fires before the search form is retrieved, at the start of get_search_form().
- [`quick_edit_custom_box`](https://developer.wordpress.org/reference/hooks/quick_edit_custom_box/) - Fires once for each column in Quick Edit mode.
- [`transition_comment_status`](https://developer.wordpress.org/reference/hooks/transition_comment_status/) - Fires when the comment status is in transition.
- [`uninstall_{$file}`](https://developer.wordpress.org/reference/hooks/uninstall_file/) - Fires in uninstall_plugin() once the plugin has been uninstalled.

### New Filters

- [`add_menu_classes`](https://developer.wordpress.org/reference/hooks/add_menu_classes/) - Filters administration menu array with classes added for top-level items.
- [`admin_comment_types_dropdown`](https://developer.wordpress.org/reference/hooks/admin_comment_types_dropdown/) - Filters the comment types shown in the drop-down menu on the Comments list table.
- [`allow_password_reset`](https://developer.wordpress.org/reference/hooks/allow_password_reset/) - Filters whether to allow a password to be reset.
- [`cancel_comment_reply_link`](https://developer.wordpress.org/reference/hooks/cancel_comment_reply_link/) - Filters the cancel comment reply link HTML.
- [`comment_class`](https://developer.wordpress.org/reference/hooks/comment_class/) - Filters the returned CSS classes for the current comment.
- [`comment_reply_link`](https://developer.wordpress.org/reference/hooks/comment_reply_link/) - Filters the comment reply link.
- [`date_formats`](https://developer.wordpress.org/reference/hooks/date_formats/) - Filters the default date formats.
- [`edit_bookmark_link`](https://developer.wordpress.org/reference/hooks/edit_bookmark_link/) - Filters the bookmark edit link anchor tag.
- [`edit_tag_link`](https://developer.wordpress.org/reference/hooks/edit_tag_link/) - Filters the anchor tag for the edit link for a tag (or term in another taxonomy).
- [`excerpt_length`](https://developer.wordpress.org/reference/hooks/excerpt_length/) - Filters the maximum number of words in a post excerpt.
- [`get_categories_taxonomy`](https://developer.wordpress.org/reference/hooks/get_categories_taxonomy/) - Filters the taxonomy used to retrieve terms when calling get_categories().
- [`get_comments_pagenum_link`](https://developer.wordpress.org/reference/hooks/get_comments_pagenum_link/) - Filters the comments page number link for the current request.
- [`get_edit_bookmark_link`](https://developer.wordpress.org/reference/hooks/get_edit_bookmark_link/) - Filters the bookmark edit link.
- [`get_edit_tag_link`](https://developer.wordpress.org/reference/hooks/get_edit_tag_link/) - Filters the edit link for a tag (or term in another taxonomy).
- [`get_search_form`](https://developer.wordpress.org/reference/hooks/get_search_form/) - Filters the HTML output of the search form.
- [`get_usernumposts`](https://developer.wordpress.org/reference/hooks/get_usernumposts/) - Filters the number of posts a user has written.
- [`http_headers_useragent`](https://developer.wordpress.org/reference/hooks/http_headers_useragent/) - Filters the user agent value sent with an HTTP request.
- [`http_request_args`](https://developer.wordpress.org/reference/hooks/http_request_args/) - Filters the arguments used in an HTTP request.
- [`http_request_redirection_count`](https://developer.wordpress.org/reference/hooks/http_request_redirection_count/) - Filters the number of redirects allowed during an HTTP request.
- [`http_request_timeout`](https://developer.wordpress.org/reference/hooks/http_request_timeout/) - Filters the timeout value for an HTTP request.
- [`http_request_version`](https://developer.wordpress.org/reference/hooks/http_request_version/) - Filters the version of the HTTP protocol used in a request.
- [`install_plugin_complete_actions`](https://developer.wordpress.org/reference/hooks/install_plugin_complete_actions/) - Filters the list of action links available following a single plugin installation.
- [`install_plugins_nonmenu_tabs`](https://developer.wordpress.org/reference/hooks/install_plugins_nonmenu_tabs/) - Filters tabs not associated with a menu item on the Add Plugins screen.
- [`install_plugins_tabs`](https://developer.wordpress.org/reference/hooks/install_plugins_tabs/) - Filters the tabs shown on the Add Plugins screen.
- [`next_comments_link_attributes`](https://developer.wordpress.org/reference/hooks/next_comments_link_attributes/) - Filters the anchor tag attributes for the next comments page link.
- [`next_posts_link_attributes`](https://developer.wordpress.org/reference/hooks/next_posts_link_attributes/) - Filters the anchor tag attributes for the next posts page link.
- [`plugin_action_links_{$plugin_file}`](https://developer.wordpress.org/reference/hooks/plugin_action_links_plugin_file/) - Filters the list of action links displayed for a specific plugin in the Plugins list table.
- [`plugin_install_action_links`](https://developer.wordpress.org/reference/hooks/plugin_install_action_links/) - Filters the install action links for a plugin.
- [`plugins_api`](https://developer.wordpress.org/reference/hooks/plugins_api/) - Filters the response for the current WordPress.org Plugin Installation API request.
- [`plugins_api_args`](https://developer.wordpress.org/reference/hooks/plugins_api_args/) - Filters the WordPress.org Plugin Installation API arguments.
- [`plugins_api_result`](https://developer.wordpress.org/reference/hooks/plugins_api_result/) - Filters the Plugin Installation API response results.
- [`post_class`](https://developer.wordpress.org/reference/hooks/post_class/) - Filters the list of CSS class names for the current post.
- [`post_comments_link`](https://developer.wordpress.org/reference/hooks/post_comments_link/) - Filters the formatted post comments link HTML.
- [`previous_comments_link_attributes`](https://developer.wordpress.org/reference/hooks/previous_comments_link_attributes/) - Filters the anchor tag attributes for the previous comments page link.
- [`previous_posts_link_attributes`](https://developer.wordpress.org/reference/hooks/previous_posts_link_attributes/) - Filters the anchor tag attributes for the previous posts page link.
- [`quick_edit_dropdown_pages_args`](https://developer.wordpress.org/reference/hooks/quick_edit_dropdown_pages_args/) - Filters the arguments used to generate the Quick Edit page-parent drop-down.
- [`sidebars_widgets`](https://developer.wordpress.org/reference/hooks/sidebars_widgets/) - Filters the list of sidebars and their widgets.
- [`site_url`](https://developer.wordpress.org/reference/hooks/site_url/) - Filters the site URL.
- [`teeny_mce_before_init`](https://developer.wordpress.org/reference/hooks/teeny_mce_before_init/) - Filters the teenyMCE config before init.
- [`teeny_mce_buttons`](https://developer.wordpress.org/reference/hooks/teeny_mce_buttons/) - Filters the list of teenyMCE buttons (Code tab).
- [`teeny_mce_plugins`](https://developer.wordpress.org/reference/hooks/teeny_mce_plugins/) - Filters the list of teenyMCE plugins.
- [`the_password_form`](https://developer.wordpress.org/reference/hooks/the_password_form/) - Filters the HTML output for the protected post password form.
- [`the_preview`](https://developer.wordpress.org/reference/hooks/the_preview/) - Filters the single post for preview mode.
- [`thread_comments_depth_max`](https://developer.wordpress.org/reference/hooks/thread_comments_depth_max/) - Filters the maximum depth of threaded/nested comments.
- [`time_formats`](https://developer.wordpress.org/reference/hooks/time_formats/) - Filters the default time formats.
- [`update_plugin_complete_actions`](https://developer.wordpress.org/reference/hooks/update_plugin_complete_actions/) - Filters the list of action links available following a single plugin update.
- [`use_curl_transport`](https://developer.wordpress.org/reference/hooks/use_curl_transport/) - Filters whether cURL can be used as a transport for retrieving a URL.
- [`use_streams_transport`](https://developer.wordpress.org/reference/hooks/use_streams_transport/) - Filters whether streams can be used as a transport for retrieving a URL.
- [`validate_current_theme`](https://developer.wordpress.org/reference/hooks/validate_current_theme/) - Filters whether to validate the active theme.
- [`wp_comment_reply`](https://developer.wordpress.org/reference/hooks/wp_comment_reply/) - Filters the in-line comment reply-to form output in the Comments list table.
- [`wp_count_comments`](https://developer.wordpress.org/reference/hooks/wp_count_comments/) - Filters the comments count for a given post or the whole site.
- [`wp_get_attachment_link`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_link/) - Filters a retrieved attachment page link.
- [`wp_insert_post_data`](https://developer.wordpress.org/reference/hooks/wp_insert_post_data/) - Filters slashed post data just before it is inserted into the database.
- [`wp_page_menu`](https://developer.wordpress.org/reference/hooks/wp_page_menu/) - Filters the HTML output of a page-based menu.
- [`wp_page_menu_args`](https://developer.wordpress.org/reference/hooks/wp_page_menu_args/) - Filters the arguments used to generate a page-based menu.
- [`xmlrpc_allow_anonymous_comments`](https://developer.wordpress.org/reference/hooks/xmlrpc_allow_anonymous_comments/) - Filters whether to allow anonymous comments over XML-RPC.

### Changes

- [`pre_get_search_form`](https://developer.wordpress.org/reference/hooks/pre_get_search_form/) - as 'get_search_form' action.

## WordPress 2.6

### New Actions

- [`_wp_put_post_revision`](https://developer.wordpress.org/reference/hooks/_wp_put_post_revision/) - Fires once a revision has been saved.
- [`admin_action_{$action}`](https://developer.wordpress.org/reference/hooks/admin_action_action/) - Fires when an 'action' request variable is sent.
- [`admin_post`](https://developer.wordpress.org/reference/hooks/admin_post/) - Fires on an authenticated admin post request where no action is supplied.
- [`admin_post_nopriv`](https://developer.wordpress.org/reference/hooks/admin_post_nopriv/) - Fires on a non-authenticated admin post request where no action is supplied.
- [`admin_post_nopriv_{$action}`](https://developer.wordpress.org/reference/hooks/admin_post_nopriv_action/) - Fires on a non-authenticated admin post request for the given action.
- [`admin_post_{$action}`](https://developer.wordpress.org/reference/hooks/admin_post_action/) - Fires on an authenticated admin post request for the given action.
- [`admin_print_styles`](https://developer.wordpress.org/reference/hooks/admin_print_styles/) - Fires when styles are printed for all admin pages.
- [`admin_print_styles-{$hook_suffix}`](https://developer.wordpress.org/reference/hooks/admin_print_styles-hook_suffix/) - Fires when styles are printed for a specific admin page based on $hook_suffix.
- [`populate_options`](https://developer.wordpress.org/reference/hooks/populate_options/) - Fires before creating WordPress options and populating their default values.
- [`post-html-upload-ui`](https://developer.wordpress.org/reference/hooks/post-html-upload-ui/) - Fires after the upload button in the media upload interface.
- [`post-plupload-upload-ui`](https://developer.wordpress.org/reference/hooks/post-plupload-upload-ui/) - Fires after the upload interface loads.
- [`post-upload-ui`](https://developer.wordpress.org/reference/hooks/post-upload-ui/) - Fires on the post upload UI screen.
- [`pre-html-upload-ui`](https://developer.wordpress.org/reference/hooks/pre-html-upload-ui/) - Fires before the upload button in the media upload interface.
- [`pre-plupload-upload-ui`](https://developer.wordpress.org/reference/hooks/pre-plupload-upload-ui/) - Fires before the upload interface loads.
- [`pre-upload-ui`](https://developer.wordpress.org/reference/hooks/pre-upload-ui/) - Fires just before the legacy (pre-3.5.0) upload interface is loaded.
- [`set_logged_in_cookie`](https://developer.wordpress.org/reference/hooks/set_logged_in_cookie/) - Fires immediately before the logged-in authentication cookie is set.
- [`setup_theme`](https://developer.wordpress.org/reference/hooks/setup_theme/) - Fires before the theme is loaded.
- [`wp_default_scripts`](https://developer.wordpress.org/reference/hooks/wp_default_scripts/) - Fires when the WP_Scripts instance is initialized.
- [`wp_default_styles`](https://developer.wordpress.org/reference/hooks/wp_default_styles/) - Fires when the WP_Styles instance is initialized.
- [`wp_delete_post_revision`](https://developer.wordpress.org/reference/hooks/wp_delete_post_revision/) - Fires once a post revision has been deleted.
- [`wp_print_styles`](https://developer.wordpress.org/reference/hooks/wp_print_styles/) - Fires before styles in the $handles queue are printed.
- [`wp_restore_post_revision`](https://developer.wordpress.org/reference/hooks/wp_restore_post_revision/) - Fires after a post revision has been restored.

### New Filters

- [`_wp_post_revision_fields`](https://developer.wordpress.org/reference/hooks/_wp_post_revision_fields/) - Filters the list of fields saved in post revisions.
- [`avatar_defaults`](https://developer.wordpress.org/reference/hooks/avatar_defaults/) - Filters the default avatars.
- [`comment_row_actions`](https://developer.wordpress.org/reference/hooks/comment_row_actions/) - Filters the action links displayed for each comment in the Comments list table.
- [`comments_per_page`](https://developer.wordpress.org/reference/hooks/comments_per_page/) - Filters the number of comments listed per page in the comments list table.
- [`default_avatar_select`](https://developer.wordpress.org/reference/hooks/default_avatar_select/) - Filters the HTML output of the default avatar list.
- [`disable_captions`](https://developer.wordpress.org/reference/hooks/disable_captions/) - Filters whether to disable captions.
- [`editable_slug`](https://developer.wordpress.org/reference/hooks/editable_slug/) - Filters the editable slug for a post or term.
- [`filesystem_method`](https://developer.wordpress.org/reference/hooks/filesystem_method/) - Filters the filesystem method to use.
- [`filesystem_method_file`](https://developer.wordpress.org/reference/hooks/filesystem_method_file/) - Filters the path for a specific filesystem method class file.
- [`get_archives_link`](https://developer.wordpress.org/reference/hooks/get_archives_link/) - Filters the archive link content.
- [`get_image_tag`](https://developer.wordpress.org/reference/hooks/get_image_tag/) - Filters the HTML content for the image tag.
- [`get_image_tag_class`](https://developer.wordpress.org/reference/hooks/get_image_tag_class/) - Filters the value of the attachment's image tag class attribute.
- [`get_post_time`](https://developer.wordpress.org/reference/hooks/get_post_time/) - Filters the localized time of the post.
- [`image_add_caption_shortcode`](https://developer.wordpress.org/reference/hooks/image_add_caption_shortcode/) - Filters the image HTML markup including the caption shortcode.
- [`image_make_intermediate_size`](https://developer.wordpress.org/reference/hooks/image_make_intermediate_size/) - Filters the name of the saved image file.
- [`img_caption_shortcode`](https://developer.wordpress.org/reference/hooks/img_caption_shortcode/) - Filters the default caption shortcode output.
- [`media_upload_form_url`](https://developer.wordpress.org/reference/hooks/media_upload_form_url/) - Filters the media upload form action URL.
- [`pre_update_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_update_option_option/) - Filters a specific option before its value is (maybe) serialized and updated.
- [`print_styles_array`](https://developer.wordpress.org/reference/hooks/print_styles_array/) - Filters the array of enqueued styles before processing for output.
- [`style_loader_src`](https://developer.wordpress.org/reference/hooks/style_loader_src/) - Filters an enqueued style's fully-qualified URL.
- [`style_loader_tag`](https://developer.wordpress.org/reference/hooks/style_loader_tag/) - Filters the HTML link tag of an enqueued style.
- [`the_excerpt_export`](https://developer.wordpress.org/reference/hooks/the_excerpt_export/) - Filters the post excerpt used for WXR exports.
- [`widget_links_args`](https://developer.wordpress.org/reference/hooks/widget_links_args/) - Filters the arguments for the Links widget.
- [`widget_title`](https://developer.wordpress.org/reference/hooks/widget_title/) - Filters the widget title.
- [`xmlrpc_blog_options`](https://developer.wordpress.org/reference/hooks/xmlrpc_blog_options/) - Filters the XML-RPC blog options property.
- [`{$adjacent}_post_link`](https://developer.wordpress.org/reference/hooks/adjacent_post_link/) - Filters the adjacent post link.

### Changes

- [`plugin_action_links`](https://developer.wordpress.org/reference/hooks/plugin_action_links/) - The <code>$context</code> parameter was added.
- [`post-plupload-upload-ui`](https://developer.wordpress.org/reference/hooks/post-plupload-upload-ui/) - As 'post-flash-upload-ui'
- [`pre-plupload-upload-ui`](https://developer.wordpress.org/reference/hooks/pre-plupload-upload-ui/) - As 'pre-flash-upload-ui'

## WordPress 2.5

### New Actions

- [`add_option_{$option}`](https://developer.wordpress.org/reference/hooks/add_option_option/) - Fires after a specific option has been added.
- [`admin_head_{$content_func}`](https://developer.wordpress.org/reference/hooks/admin_head_content_func/) - Fires in the admin header for each specific form tab in the legacy (pre-3.5.0) media upload popup.
- [`admin_init`](https://developer.wordpress.org/reference/hooks/admin_init/) - Fires as an admin screen or script is being initialized.
- [`admin_page_access_denied`](https://developer.wordpress.org/reference/hooks/admin_page_access_denied/) - Fires when access to an admin page is denied.
- [`adminmenu`](https://developer.wordpress.org/reference/hooks/adminmenu/) - Fires after the admin menu has been output.
- [`clean_object_term_cache`](https://developer.wordpress.org/reference/hooks/clean_object_term_cache/) - Fires after the object term cache has been cleaned.
- [`clean_page_cache`](https://developer.wordpress.org/reference/hooks/clean_page_cache/) - Fires immediately after the given page's cache is cleaned.
- [`clean_post_cache`](https://developer.wordpress.org/reference/hooks/clean_post_cache/) - Fires immediately after the given post's cache is cleaned.
- [`clean_term_cache`](https://developer.wordpress.org/reference/hooks/clean_term_cache/) - Fires once after each taxonomy's term cache has been cleaned.
- [`delete_term`](https://developer.wordpress.org/reference/hooks/delete_term/) - Fires after a term is deleted from the database and the cache is cleaned.
- [`deprecated_file_included`](https://developer.wordpress.org/reference/hooks/deprecated_file_included/) - Fires when a deprecated file is called.
- [`deprecated_function_run`](https://developer.wordpress.org/reference/hooks/deprecated_function_run/) - Fires when a deprecated function is called.
- [`in_admin_footer`](https://developer.wordpress.org/reference/hooks/in_admin_footer/) - Fires after the opening tag for the admin footer.
- [`manage_comments_nav`](https://developer.wordpress.org/reference/hooks/manage_comments_nav/) - Fires after the Filter submit button for comment types.
- [`manage_media_custom_column`](https://developer.wordpress.org/reference/hooks/manage_media_custom_column/) - Fires for each custom column in the Media list table.
- [`manage_pages_custom_column`](https://developer.wordpress.org/reference/hooks/manage_pages_custom_column/) - Fires in each custom column on the Posts list table.
- [`media_buttons`](https://developer.wordpress.org/reference/hooks/media_buttons/) - Fires after the default media button(s) are displayed.
- [`media_upload_{$tab}`](https://developer.wordpress.org/reference/hooks/media_upload_tab/) - Fires inside limited and specific upload-tab views in the legacy (pre-3.5.0) media popup.
- [`media_upload_{$type}`](https://developer.wordpress.org/reference/hooks/media_upload_type/) - Fires inside specific upload-type views in the legacy (pre-3.5.0) media popup based on the current tab.
- [`pre_post_update`](https://developer.wordpress.org/reference/hooks/pre_post_update/) - Fires immediately before an existing post is updated in the database.
- [`retrieve_password_key`](https://developer.wordpress.org/reference/hooks/retrieve_password_key/) - Fires when a password reset key is generated.
- [`rightnow_end`](https://developer.wordpress.org/reference/hooks/rightnow_end/) - Fires at the end of the 'At a Glance' dashboard widget.
- [`set_auth_cookie`](https://developer.wordpress.org/reference/hooks/set_auth_cookie/) - Fires immediately before the authentication cookie is set.
- [`submitlink_box`](https://developer.wordpress.org/reference/hooks/submitlink_box/) - Fires at the end of the Publish box in the Link editing screen.
- [`submitpage_box`](https://developer.wordpress.org/reference/hooks/submitpage_box/) - Fires before meta boxes with 'side' context are output for the 'page' post type.
- [`submitpost_box`](https://developer.wordpress.org/reference/hooks/submitpost_box/) - Fires before meta boxes with 'side' context are output for all post types other than 'page'.
- [`wp_dashboard_setup`](https://developer.wordpress.org/reference/hooks/wp_dashboard_setup/) - Fires after core widgets for the admin dashboard have been registered.
- [`wp_login_failed`](https://developer.wordpress.org/reference/hooks/wp_login_failed/) - Fires after a user login has failed.
- [`xmlrpc_call`](https://developer.wordpress.org/reference/hooks/xmlrpc_call/) - Fires after the XML-RPC user has been authenticated but before the rest of the method logic begins.

### New Filters

- [`async_upload_{$type}`](https://developer.wordpress.org/reference/hooks/async_upload_type/) - Filters the returned ID of an uploaded attachment.
- [`attachment_fields_to_edit`](https://developer.wordpress.org/reference/hooks/attachment_fields_to_edit/) - Filters the attachment fields to edit.
- [`attachment_fields_to_save`](https://developer.wordpress.org/reference/hooks/attachment_fields_to_save/) - Filters the attachment fields to be saved.
- [`auth_cookie`](https://developer.wordpress.org/reference/hooks/auth_cookie/) - Filters the authentication cookie.
- [`check_password`](https://developer.wordpress.org/reference/hooks/check_password/) - Filters whether the plaintext password matches the hashed password.
- [`comment_status_links`](https://developer.wordpress.org/reference/hooks/comment_status_links/) - Filters the comment status links.
- [`comments_open`](https://developer.wordpress.org/reference/hooks/comments_open/) - Filters whether the current post is open for comments.
- [`comments_popup_link_attributes`](https://developer.wordpress.org/reference/hooks/comments_popup_link_attributes/) - Filters the comments link attributes for display.
- [`dashboard_primary_link`](https://developer.wordpress.org/reference/hooks/dashboard_primary_link/) - Filters the primary link URL for the 'WordPress Events and News' dashboard widget.
- [`default_feed`](https://developer.wordpress.org/reference/hooks/default_feed/) - Filters the default feed type.
- [`deprecated_file_trigger_error`](https://developer.wordpress.org/reference/hooks/deprecated_file_trigger_error/) - Filters whether to trigger an error for deprecated files.
- [`deprecated_function_trigger_error`](https://developer.wordpress.org/reference/hooks/deprecated_function_trigger_error/) - Filters whether to trigger an error for deprecated functions.
- [`dynamic_sidebar_params`](https://developer.wordpress.org/reference/hooks/dynamic_sidebar_params/) - Filters the parameters passed to a widget's display callback.
- [`editor_max_image_size`](https://developer.wordpress.org/reference/hooks/editor_max_image_size/) - Filters the maximum image size dimensions for the editor.
- [`ext2type`](https://developer.wordpress.org/reference/hooks/ext2type/) - Filters file type based on the extension name.
- [`file_is_displayable_image`](https://developer.wordpress.org/reference/hooks/file_is_displayable_image/) - Filters whether the current image is displayable in the browser.
- [`gallery_style`](https://developer.wordpress.org/reference/hooks/gallery_style/) - Filters the default gallery shortcode CSS styles.
- [`get_avatar`](https://developer.wordpress.org/reference/hooks/get_avatar/) - Filters the HTML for a user's avatar.
- [`get_pagenum_link`](https://developer.wordpress.org/reference/hooks/get_pagenum_link/) - Filters the page number link for the current request.
- [`get_the_generator_{$type}`](https://developer.wordpress.org/reference/hooks/get_the_generator_type/) - Filters the HTML for the retrieved generator type.
- [`get_user_option_{$option}`](https://developer.wordpress.org/reference/hooks/get_user_option_option/) - Filters a specific user option value.
- [`get_{$adjacent}_post_join`](https://developer.wordpress.org/reference/hooks/get_adjacent_post_join/) - Filters the JOIN clause in the SQL for an adjacent post query.
- [`get_{$adjacent}_post_sort`](https://developer.wordpress.org/reference/hooks/get_adjacent_post_sort/) - Filters the ORDER BY clause in the SQL for an adjacent post query.
- [`get_{$adjacent}_post_where`](https://developer.wordpress.org/reference/hooks/get_adjacent_post_where/) - Filters the WHERE clause in the SQL for an adjacent post query.
- [`got_rewrite`](https://developer.wordpress.org/reference/hooks/got_rewrite/) - Filters whether Apache and mod_rewrite are present.
- [`icon_dirs`](https://developer.wordpress.org/reference/hooks/icon_dirs/) - Filters the array of icon directory URIs.
- [`image_downsize`](https://developer.wordpress.org/reference/hooks/image_downsize/) - Filters whether to preempt the output of image_downsize().
- [`image_send_to_editor`](https://developer.wordpress.org/reference/hooks/image_send_to_editor/) - Filters the image HTML markup to send to the editor when inserting an image.
- [`intermediate_image_sizes`](https://developer.wordpress.org/reference/hooks/intermediate_image_sizes/) - Filters the list of intermediate image sizes.
- [`jpeg_quality`](https://developer.wordpress.org/reference/hooks/jpeg_quality/) - Filters the JPEG compression quality for backward-compatibility.
- [`language_attributes`](https://developer.wordpress.org/reference/hooks/language_attributes/) - Filters the language attributes for display in the 'html' tag.
- [`login_messages`](https://developer.wordpress.org/reference/hooks/login_messages/) - Filters instructional messages displayed above the login form.
- [`manage_media_columns`](https://developer.wordpress.org/reference/hooks/manage_media_columns/) - Filters the Media list table columns.
- [`manage_pages_columns`](https://developer.wordpress.org/reference/hooks/manage_pages_columns/) - Filters the columns displayed in the Pages list table.
- [`mce_buttons_4`](https://developer.wordpress.org/reference/hooks/mce_buttons_4/) - Filters the fourth-row list of TinyMCE buttons (Visual tab).
- [`mce_external_languages`](https://developer.wordpress.org/reference/hooks/mce_external_languages/) - Filters the translations loaded for external TinyMCE 3.x plugins.
- [`mce_external_plugins`](https://developer.wordpress.org/reference/hooks/mce_external_plugins/) - Filters the list of TinyMCE external plugins.
- [`media_meta`](https://developer.wordpress.org/reference/hooks/media_meta/) - Filters the media metadata.
- [`media_send_to_editor`](https://developer.wordpress.org/reference/hooks/media_send_to_editor/) - Filters the HTML markup for a media item sent to the editor.
- [`media_upload_default_tab`](https://developer.wordpress.org/reference/hooks/media_upload_default_tab/) - Filters the default tab in the legacy (pre-3.5.0) media popup.
- [`media_upload_default_type`](https://developer.wordpress.org/reference/hooks/media_upload_default_type/) - Filters the default media upload type in the legacy (pre-3.5.0) media popup.
- [`media_upload_tabs`](https://developer.wordpress.org/reference/hooks/media_upload_tabs/) - Filters the available tabs in the legacy (pre-3.5.0) media popup.
- [`nonce_life`](https://developer.wordpress.org/reference/hooks/nonce_life/) - Filters the lifespan of nonces in seconds.
- [`pings_open`](https://developer.wordpress.org/reference/hooks/pings_open/) - Filters whether the current post is open for pings.
- [`plugin_action_links`](https://developer.wordpress.org/reference/hooks/plugin_action_links/) - Filters the action links displayed for each plugin in the Plugins list table.
- [`post_date_column_time`](https://developer.wordpress.org/reference/hooks/post_date_column_time/) (2.5.1) - Filters the published, scheduled, or unpublished time of the post.
- [`post_gallery`](https://developer.wordpress.org/reference/hooks/post_gallery/) - Filters the default gallery shortcode output.
- [`post_limits_request`](https://developer.wordpress.org/reference/hooks/post_limits_request/) - Filters the LIMIT clause of the query.
- [`post_mime_types`](https://developer.wordpress.org/reference/hooks/post_mime_types/) - Filters the default list of post mime types.
- [`posts_distinct_request`](https://developer.wordpress.org/reference/hooks/posts_distinct_request/) - Filters the DISTINCT clause of the query.
- [`posts_fields_request`](https://developer.wordpress.org/reference/hooks/posts_fields_request/) - Filters the SELECT clause of the query.
- [`posts_groupby_request`](https://developer.wordpress.org/reference/hooks/posts_groupby_request/) - Filters the GROUP BY clause of the query.
- [`posts_join_request`](https://developer.wordpress.org/reference/hooks/posts_join_request/) - Filters the JOIN clause of the query.
- [`posts_orderby_request`](https://developer.wordpress.org/reference/hooks/posts_orderby_request/) - Filters the ORDER BY clause of the query.
- [`posts_where_request`](https://developer.wordpress.org/reference/hooks/posts_where_request/) - Filters the WHERE clause of the query.
- [`pre_remote_source`](https://developer.wordpress.org/reference/hooks/pre_remote_source/) - Filters the pingback remote source.
- [`request_filesystem_credentials`](https://developer.wordpress.org/reference/hooks/request_filesystem_credentials/) - Filters the filesystem credentials.
- [`salt`](https://developer.wordpress.org/reference/hooks/salt/) - Filters the WordPress salt.
- [`search_feed_link`](https://developer.wordpress.org/reference/hooks/search_feed_link/) - Filters the search feed link.
- [`term_link`](https://developer.wordpress.org/reference/hooks/term_link/) - Filters the term link.
- [`term_links-{$taxonomy}`](https://developer.wordpress.org/reference/hooks/term_links-taxonomy/) - Filters the term links for a given taxonomy.
- [`term_name`](https://developer.wordpress.org/reference/hooks/term_name/) - Filters display of the term name in the terms list table.
- [`the_content_export`](https://developer.wordpress.org/reference/hooks/the_content_export/) - Filters the post content used for WXR exports.
- [`the_generator`](https://developer.wordpress.org/reference/hooks/the_generator/) - Filters the output of the XHTML generator tag, for display.
- [`tiny_mce_before_init`](https://developer.wordpress.org/reference/hooks/tiny_mce_before_init/) - Filters the TinyMCE config before init.
- [`update_feedback`](https://developer.wordpress.org/reference/hooks/update_feedback/) - Filters feedback messages displayed during the core update process.
- [`upload_size_limit`](https://developer.wordpress.org/reference/hooks/upload_size_limit/) - Filters the maximum upload size allowed in php.ini.
- [`wp_authenticate_user`](https://developer.wordpress.org/reference/hooks/wp_authenticate_user/) - Filters whether the given user can be authenticated with the provided password.
- [`wp_dashboard_widgets`](https://developer.wordpress.org/reference/hooks/wp_dashboard_widgets/) - Filters the list of widgets to load for the admin dashboard.
- [`wp_default_editor`](https://developer.wordpress.org/reference/hooks/wp_default_editor/) - Filters which editor should be displayed by default.
- [`wp_generator_type`](https://developer.wordpress.org/reference/hooks/wp_generator_type/) - Filters the output of the XHTML generator tag.
- [`wp_list_bookmarks`](https://developer.wordpress.org/reference/hooks/wp_list_bookmarks/) - Filters the bookmarks list before it is echoed or returned.
- [`wp_read_image_metadata`](https://developer.wordpress.org/reference/hooks/wp_read_image_metadata/) - Filters the array of meta data read from an image's exif data.
- [`wp_read_image_metadata_types`](https://developer.wordpress.org/reference/hooks/wp_read_image_metadata_types/) - Filters the image types to check for exif data.
- [`wp_sprintf`](https://developer.wordpress.org/reference/hooks/wp_sprintf/) - Filters a fragment from the pattern passed to wp_sprintf().
- [`wp_sprintf_l`](https://developer.wordpress.org/reference/hooks/wp_sprintf_l/) - Filters the translated delimiters used by wp_sprintf_l().

### Changes

- [`add_option_{$option}`](https://developer.wordpress.org/reference/hooks/add_option_option/) - As <code>add_option_{$name}</code>
- [`category_link`](https://developer.wordpress.org/reference/hooks/category_link/) - Deprecated in favor of {@see 'term_link'} filter.
- [`tag_link`](https://developer.wordpress.org/reference/hooks/tag_link/) - Deprecated in favor of {@see 'term_link'} filter.

## WordPress 2.3

### New Actions

- [`after_plugin_row`](https://developer.wordpress.org/reference/hooks/after_plugin_row/) - Fires after each row in the Plugins list table.
- [`check_comment_flood`](https://developer.wordpress.org/reference/hooks/check_comment_flood/) - Fires immediately before a comment is marked approved.
- [`commentsrss2_head`](https://developer.wordpress.org/reference/hooks/commentsrss2_head/) - Fires at the end of the RSS2 comment feed header.
- [`create_term`](https://developer.wordpress.org/reference/hooks/create_term/) - Fires immediately after a new term is created, before the term cache is cleaned.
- [`create_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/create_taxonomy/) - Fires after a new term is created for a specific taxonomy.
- [`created_term`](https://developer.wordpress.org/reference/hooks/created_term/) - Fires after a new term is created, and after the term cache has been cleaned.
- [`created_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/created_taxonomy/) - Fires after a new term in a specific taxonomy is created, and after the term cache has been cleaned.
- [`delete_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/delete_taxonomy/) - Fires after a term in a specific taxonomy is deleted.
- [`edit_term`](https://developer.wordpress.org/reference/hooks/edit_term/) - Fires after a term has been updated, but before the term cache has been cleaned.
- [`edit_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/edit_taxonomy/) - Fires after a term in a specific taxonomy has been updated, but before the term cache has been cleaned.
- [`edited_term`](https://developer.wordpress.org/reference/hooks/edited_term/) - Fires after a term has been updated, and the term cache has been cleaned.
- [`edited_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/edited_taxonomy/) - Fires after a term for a specific taxonomy has been updated, and the term cache has been cleaned.
- [`export_wp`](https://developer.wordpress.org/reference/hooks/export_wp/) - Fires at the beginning of an export, before any headers are sent.
- [`load_feed_engine`](https://developer.wordpress.org/reference/hooks/load_feed_engine/) - Fires before MagpieRSS is loaded, to optionally replace it.
- [`posts_selection`](https://developer.wordpress.org/reference/hooks/posts_selection/) - Fires to announce the query's current selection parameters.
- [`transition_post_status`](https://developer.wordpress.org/reference/hooks/transition_post_status/) - Fires when a post is transitioned from one status to another.
- [`wp_update_comment_count`](https://developer.wordpress.org/reference/hooks/wp_update_comment_count/) - Fires immediately after a post's comment count is updated in the database.
- [`{$new_status}_{$post->post_type}`](https://developer.wordpress.org/reference/hooks/new_status_post-post_type/) - Fires when a post is transitioned from one status to another.
- [`{$old_status}_to_{$new_status}`](https://developer.wordpress.org/reference/hooks/old_status_to_new_status/) - Fires when a post is transitioned from one status to another.

### New Filters

- [`admin_body_class`](https://developer.wordpress.org/reference/hooks/admin_body_class/) - Filters the CSS classes for the body tag in the admin.
- [`allowed_redirect_hosts`](https://developer.wordpress.org/reference/hooks/allowed_redirect_hosts/) - Filters the list of allowed hosts to redirect to.
- [`clean_url`](https://developer.wordpress.org/reference/hooks/clean_url/) - Filters a string cleaned and escaped for output as a URL.
- [`dashboard_primary_feed`](https://developer.wordpress.org/reference/hooks/dashboard_primary_feed/) - Filters the primary feed URL for the 'WordPress Events and News' dashboard widget.
- [`dashboard_primary_title`](https://developer.wordpress.org/reference/hooks/dashboard_primary_title/) - Filters the primary link title for the 'WordPress Events and News' dashboard widget.
- [`dashboard_secondary_feed`](https://developer.wordpress.org/reference/hooks/dashboard_secondary_feed/) - Filters the secondary feed URL for the 'WordPress Events and News' dashboard widget.
- [`dashboard_secondary_link`](https://developer.wordpress.org/reference/hooks/dashboard_secondary_link/) - Filters the secondary link URL for the 'WordPress Events and News' dashboard widget.
- [`dashboard_secondary_title`](https://developer.wordpress.org/reference/hooks/dashboard_secondary_title/) - Filters the secondary link title for the 'WordPress Events and News' dashboard widget.
- [`edit_comment_link`](https://developer.wordpress.org/reference/hooks/edit_comment_link/) - Filters the comment edit link anchor tag.
- [`edit_post_link`](https://developer.wordpress.org/reference/hooks/edit_post_link/) - Filters the post edit link anchor tag.
- [`edit_term_{$field}`](https://developer.wordpress.org/reference/hooks/edit_term_field/) - Filters a term field to edit before it is sanitized.
- [`edit_{$field}`](https://developer.wordpress.org/reference/hooks/edit_field/) - Filters the value of a specific post field to edit.
- [`edit_{$taxonomy}_{$field}`](https://developer.wordpress.org/reference/hooks/edit_taxonomy_field/) - Filters the taxonomy field to edit before it is sanitized.
- [`get_comment`](https://developer.wordpress.org/reference/hooks/get_comment/) - Fires after a comment is retrieved.
- [`get_edit_comment_link`](https://developer.wordpress.org/reference/hooks/get_edit_comment_link/) - Filters the comment edit link.
- [`get_edit_post_link`](https://developer.wordpress.org/reference/hooks/get_edit_post_link/) - Filters the post edit link.
- [`get_lastpostdate`](https://developer.wordpress.org/reference/hooks/get_lastpostdate/) - Filters the most recent time that a post on the site was published.
- [`get_lastpostmodified`](https://developer.wordpress.org/reference/hooks/get_lastpostmodified/) - Filters the most recent time that a post on the site was modified.
- [`get_search_query`](https://developer.wordpress.org/reference/hooks/get_search_query/) - Filters the contents of the search query variable.
- [`get_tags`](https://developer.wordpress.org/reference/hooks/get_tags/) - Filters the array of term objects returned for the 'post_tag' taxonomy.
- [`get_term`](https://developer.wordpress.org/reference/hooks/get_term/) - Filters a taxonomy term object.
- [`get_terms`](https://developer.wordpress.org/reference/hooks/get_terms/) - Filters the found terms.
- [`get_the_tags`](https://developer.wordpress.org/reference/hooks/get_the_tags/) - Filters the array of tags for the given post.
- [`get_{$taxonomy}`](https://developer.wordpress.org/reference/hooks/get_taxonomy/) - Filters a taxonomy term object.
- [`import_upload_size_limit`](https://developer.wordpress.org/reference/hooks/import_upload_size_limit/) - Filters the maximum allowed upload size for import files.
- [`list_terms_exclusions`](https://developer.wordpress.org/reference/hooks/list_terms_exclusions/) - Filters the terms to exclude from the terms query.
- [`posts_results`](https://developer.wordpress.org/reference/hooks/posts_results/) - Filters the raw post results array, prior to status checks.
- [`pre_kses`](https://developer.wordpress.org/reference/hooks/pre_kses/) - Filters content to be run through KSES.
- [`pre_term_{$field}`](https://developer.wordpress.org/reference/hooks/pre_term_field/) - Filters a term field value before it is sanitized.
- [`pre_{$field}`](https://developer.wordpress.org/reference/hooks/pre_field/) - Filters the value of a specific post field before saving.
- [`pre_{$taxonomy}_{$field}`](https://developer.wordpress.org/reference/hooks/pre_taxonomy_field/) - Filters a taxonomy field before it is sanitized.
- [`print_scripts_array`](https://developer.wordpress.org/reference/hooks/print_scripts_array/) - Filters the list of script dependencies left to print.
- [`redirect_canonical`](https://developer.wordpress.org/reference/hooks/redirect_canonical/) - Filters the canonical redirect URL.
- [`sanitize_option_{$option}`](https://developer.wordpress.org/reference/hooks/sanitize_option_option/) - Filters an option value following sanitization.
- [`single_tag_title`](https://developer.wordpress.org/reference/hooks/single_tag_title/) - Filters the tag archive page title.
- [`tag_feed_link`](https://developer.wordpress.org/reference/hooks/tag_feed_link/) - Filters the post tag feed link.
- [`tag_link`](https://developer.wordpress.org/reference/hooks/tag_link/) - Filters the tag link.
- [`term_id_filter`](https://developer.wordpress.org/reference/hooks/term_id_filter/) - Filters the term ID after a new term is created.
- [`term_{$field}`](https://developer.wordpress.org/reference/hooks/term_field/) - Filters the term field sanitized for display.
- [`term_{$field}_rss`](https://developer.wordpress.org/reference/hooks/term_field_rss/) - Filters the term field for use in RSS.
- [`the_permalink_rss`](https://developer.wordpress.org/reference/hooks/the_permalink_rss/) - Filters the permalink to the post for use in feeds.
- [`the_search_query`](https://developer.wordpress.org/reference/hooks/the_search_query/) - Filters the contents of the search query variable, for display.
- [`the_tags`](https://developer.wordpress.org/reference/hooks/the_tags/) - Filters the tags list for a given post.
- [`update_footer`](https://developer.wordpress.org/reference/hooks/update_footer/) - Filters the version/update text displayed in the admin footer.
- [`widget_text`](https://developer.wordpress.org/reference/hooks/widget_text/) - Filters the content of the Text widget.
- [`wp_admin_css`](https://developer.wordpress.org/reference/hooks/wp_admin_css/) - Filters the stylesheet link to the specified CSS file.
- [`wp_admin_css_uri`](https://developer.wordpress.org/reference/hooks/wp_admin_css_uri/) - Filters the URI of a WordPress admin CSS file.
- [`wp_dropdown_users`](https://developer.wordpress.org/reference/hooks/wp_dropdown_users/) - Filters the wp_dropdown_users() HTML output.
- [`wp_generate_tag_cloud`](https://developer.wordpress.org/reference/hooks/wp_generate_tag_cloud/) - Filters the generated output of a tag cloud.
- [`wp_mail_charset`](https://developer.wordpress.org/reference/hooks/wp_mail_charset/) - Filters the default wp_mail() charset.
- [`wp_mail_content_type`](https://developer.wordpress.org/reference/hooks/wp_mail_content_type/) - Filters the wp_mail() content type.
- [`wp_mail_from_name`](https://developer.wordpress.org/reference/hooks/wp_mail_from_name/) - Filters the name to associate with the "from" email address.
- [`wp_redirect_status`](https://developer.wordpress.org/reference/hooks/wp_redirect_status/) - Filters the redirect HTTP response status code to use.
- [`wp_tag_cloud`](https://developer.wordpress.org/reference/hooks/wp_tag_cloud/) - Filters the tag cloud output.
- [`{$field_no_prefix}_edit_pre`](https://developer.wordpress.org/reference/hooks/field_no_prefix_edit_pre/) - Filters the value of a specific post field to edit.
- [`{$field_no_prefix}_save_pre`](https://developer.wordpress.org/reference/hooks/field_no_prefix_save_pre/) - Filters the value of a specific field before saving.
- [`{$field}`](https://developer.wordpress.org/reference/hooks/field/) - Filters the value of a specific post field for display.
- [`{$field}_pre`](https://developer.wordpress.org/reference/hooks/field_pre/) - Filters the value of a specific post field before saving.
- [`{$taxonomy}_{$field}`](https://developer.wordpress.org/reference/hooks/taxonomy_field/) - Filters the taxonomy field sanitized for display.
- [`{$taxonomy}_{$field}_rss`](https://developer.wordpress.org/reference/hooks/taxonomy_field_rss/) - Filters the taxonomy field for use in RSS.

### Changes

_No changes in this version._

## WordPress 2.2

### New Actions

- [`_admin_menu`](https://developer.wordpress.org/reference/hooks/_admin_menu/) - Fires before the administration menu loads in the admin.
- [`admin_xml_ns`](https://developer.wordpress.org/reference/hooks/admin_xml_ns/) - Fires inside the HTML tag in the admin header.
- [`comment_atom_entry`](https://developer.wordpress.org/reference/hooks/comment_atom_entry/) - Fires at the end of each Atom comment feed item.
- [`comment_loop_start`](https://developer.wordpress.org/reference/hooks/comment_loop_start/) - Fires once the comment loop is started.
- [`deleted_link`](https://developer.wordpress.org/reference/hooks/deleted_link/) - Fires after a link has been deleted.
- [`deleted_post`](https://developer.wordpress.org/reference/hooks/deleted_post/) - Fires immediately after a post is deleted from the database.
- [`get_sidebar`](https://developer.wordpress.org/reference/hooks/get_sidebar/) - Fires before the sidebar template file is loaded.
- [`phpmailer_init`](https://developer.wordpress.org/reference/hooks/phpmailer_init/) - Fires after PHPMailer is initialized.
- [`sidebar_admin_page`](https://developer.wordpress.org/reference/hooks/sidebar_admin_page/) - Fires after the available widgets and sidebars have loaded, before the admin footer.
- [`sidebar_admin_setup`](https://developer.wordpress.org/reference/hooks/sidebar_admin_setup/) - Fires early before the Widgets administration screen loads, after scripts are enqueued.
- [`widgets_init`](https://developer.wordpress.org/reference/hooks/widgets_init/) - Fires after all default WordPress widgets have been registered.

### New Filters

- [`atom_enclosure`](https://developer.wordpress.org/reference/hooks/atom_enclosure/) - Filters the atom enclosure HTML link tag for the current post.
- [`comment_feed_groupby`](https://developer.wordpress.org/reference/hooks/comment_feed_groupby/) - Filters the GROUP BY clause of the comments feed query before sending.
- [`comment_feed_join`](https://developer.wordpress.org/reference/hooks/comment_feed_join/) - Filters the JOIN clause of the comments feed query before sending.
- [`comment_feed_where`](https://developer.wordpress.org/reference/hooks/comment_feed_where/) - Filters the WHERE clause of the comments feed query before sending.
- [`get_bloginfo_rss`](https://developer.wordpress.org/reference/hooks/get_bloginfo_rss/) - Filters the bloginfo for use in RSS feeds.
- [`get_wp_title_rss`](https://developer.wordpress.org/reference/hooks/get_wp_title_rss/) - Filters the blog title for use as the feed title.
- [`getarchives_join`](https://developer.wordpress.org/reference/hooks/getarchives_join/) - Filters the SQL JOIN clause for retrieving archives.
- [`getarchives_where`](https://developer.wordpress.org/reference/hooks/getarchives_where/) - Filters the SQL WHERE clause for retrieving archives.
- [`link_category`](https://developer.wordpress.org/reference/hooks/link_category/) - Filters the category name.
- [`link_title`](https://developer.wordpress.org/reference/hooks/link_title/) - Filters the OPML outline link title text.
- [`ngettext`](https://developer.wordpress.org/reference/hooks/ngettext/) - Filters the singular or plural form of a string.
- [`rss_enclosure`](https://developer.wordpress.org/reference/hooks/rss_enclosure/) - Filters the RSS enclosure HTML link tag for the current post.
- [`script_loader_src`](https://developer.wordpress.org/reference/hooks/script_loader_src/) - Filters the script loader source.
- [`status_header`](https://developer.wordpress.org/reference/hooks/status_header/) - Filters an HTTP status header.
- [`the_meta_key`](https://developer.wordpress.org/reference/hooks/the_meta_key/) - Filters the HTML output of the li element in the post custom fields list.
- [`theme_mod_{$name}`](https://developer.wordpress.org/reference/hooks/theme_mod_name/) - Filters the theme modification, or 'theme_mod', value.
- [`trackback_url`](https://developer.wordpress.org/reference/hooks/trackback_url/) - Filters the returned trackback URL.
- [`url_to_postid`](https://developer.wordpress.org/reference/hooks/url_to_postid/) - Filters the URL to derive the post ID from.
- [`user_trailingslashit`](https://developer.wordpress.org/reference/hooks/user_trailingslashit/) - Filters the trailing-slashed string, depending on whether the site is set to use trailing slashes.
- [`wp_mail`](https://developer.wordpress.org/reference/hooks/wp_mail/) - Filters the wp_mail() arguments.
- [`wp_mail_from`](https://developer.wordpress.org/reference/hooks/wp_mail_from/) - Filters the email address to send from.
- [`wp_parse_str`](https://developer.wordpress.org/reference/hooks/wp_parse_str/) (2.2.1) - Filters the array of variables derived from a parsed string.
- [`wp_title_rss`](https://developer.wordpress.org/reference/hooks/wp_title_rss/) - Filters the blog title for display of the feed title.
- [`xmlrpc_text_filters`](https://developer.wordpress.org/reference/hooks/xmlrpc_text_filters/) - Filters the MoveableType text filters list for XML-RPC.

### Changes

_No changes in this version._

## WordPress 2.1

### New Actions

- [`admin_head`](https://developer.wordpress.org/reference/hooks/admin_head/) - Fires in head section for all admin pages.
- [`admin_head-{$hook_suffix}`](https://developer.wordpress.org/reference/hooks/admin_head-hook_suffix/) - Fires in head section for a specific admin page.
- [`admin_print_scripts`](https://developer.wordpress.org/reference/hooks/admin_print_scripts/) - Fires when scripts are printed for all admin pages.
- [`admin_print_scripts-{$hook_suffix}`](https://developer.wordpress.org/reference/hooks/admin_print_scripts-hook_suffix/) - Fires when scripts are printed for a specific admin page based on $hook_suffix.
- [`blog_privacy_selector`](https://developer.wordpress.org/reference/hooks/blog_privacy_selector/) - Enables the legacy 'Site visibility' privacy options.
- [`check_ajax_referer`](https://developer.wordpress.org/reference/hooks/check_ajax_referer/) - Fires once the Ajax request has been validated or not.
- [`commentrss2_item`](https://developer.wordpress.org/reference/hooks/commentrss2_item/) - Fires at the end of each RSS2 comment feed item.
- [`dbx_post_sidebar`](https://developer.wordpress.org/reference/hooks/dbx_post_sidebar/) - Fires after all meta box sections have been output, before the closing #post-body div.
- [`do_feed_{$feed}`](https://developer.wordpress.org/reference/hooks/do_feed_feed/) - Fires once the given feed is loaded.
- [`do_robots`](https://developer.wordpress.org/reference/hooks/do_robots/) - Fired when the template loader determines a robots.txt request.
- [`do_robotstxt`](https://developer.wordpress.org/reference/hooks/do_robotstxt/) - Fires when displaying the robots.txt file.
- [`get_footer`](https://developer.wordpress.org/reference/hooks/get_footer/) - Fires before the footer template file is loaded.
- [`get_header`](https://developer.wordpress.org/reference/hooks/get_header/) - Fires before the header template file is loaded.
- [`load-{$page_hook}`](https://developer.wordpress.org/reference/hooks/load-page_hook/) - Fires before a particular screen is loaded.
- [`load-{$pagenow}`](https://developer.wordpress.org/reference/hooks/load-pagenow/) - Fires before a particular screen is loaded.
- [`login_form`](https://developer.wordpress.org/reference/hooks/login_form/) - Fires following the 'Password' field in the login form.
- [`login_head`](https://developer.wordpress.org/reference/hooks/login_head/) - Fires in the login page header after scripts are enqueued.
- [`lostpassword_form`](https://developer.wordpress.org/reference/hooks/lostpassword_form/) - Fires inside the lostpassword form tags, before the hidden fields.
- [`lostpassword_post`](https://developer.wordpress.org/reference/hooks/lostpassword_post/) - Fires before errors are returned from a password reset request.
- [`manage_link_custom_column`](https://developer.wordpress.org/reference/hooks/manage_link_custom_column/) - Fires for each registered custom link column.
- [`parse_request`](https://developer.wordpress.org/reference/hooks/parse_request/) - Fires once all query variables for the current request have been parsed.
- [`register_form`](https://developer.wordpress.org/reference/hooks/register_form/) - Fires following the 'Email' field in the user registration form.
- [`register_post`](https://developer.wordpress.org/reference/hooks/register_post/) - Fires when submitting registration form data, before the user is created.
- [`restrict_manage_posts`](https://developer.wordpress.org/reference/hooks/restrict_manage_posts/) - Fires before the Filter button on the Posts and Pages list tables.
- [`send_headers`](https://developer.wordpress.org/reference/hooks/send_headers/) - Fires once the requested HTTP headers for caching, content type, etc. have been sent.
- [`wp`](https://developer.wordpress.org/reference/hooks/wp/) - Fires once the WordPress environment has been set up.
- [`wp_ajax_{$action}`](https://developer.wordpress.org/reference/hooks/wp_ajax_action/) - Fires authenticated Ajax actions for logged-in users.
- [`wp_print_scripts`](https://developer.wordpress.org/reference/hooks/wp_print_scripts/) - Fires before scripts in the $handles queue are printed.
- [`xmlrpc_publish_post`](https://developer.wordpress.org/reference/hooks/xmlrpc_publish_post/) - Fires when _publish_post_hook() is called during an XML-RPC request.

### New Filters

- [`_get_page_link`](https://developer.wordpress.org/reference/hooks/_get_page_link/) - Filters the permalink for a non-page_on_front page.
- [`author_link`](https://developer.wordpress.org/reference/hooks/author_link/) - Filters the URL to the author's page.
- [`bloginfo_rss`](https://developer.wordpress.org/reference/hooks/bloginfo_rss/) - Filters the bloginfo for display in RSS feeds.
- [`comment_edit_redirect`](https://developer.wordpress.org/reference/hooks/comment_edit_redirect/) - Filters the URI the user is redirected to after editing a comment in the admin.
- [`comment_flood_filter`](https://developer.wordpress.org/reference/hooks/comment_flood_filter/) - Filters the comment flood status.
- [`comments_array`](https://developer.wordpress.org/reference/hooks/comments_array/) - Filters the comments array.
- [`cron_schedules`](https://developer.wordpress.org/reference/hooks/cron_schedules/) - Filters the non-default cron schedules.
- [`found_posts`](https://developer.wordpress.org/reference/hooks/found_posts/) - Filters the number of found posts for the query.
- [`found_posts_query`](https://developer.wordpress.org/reference/hooks/found_posts_query/) - Filters the query to run for retrieving the found posts.
- [`get_attached_file`](https://developer.wordpress.org/reference/hooks/get_attached_file/) - Filters the attached file based on the given ID.
- [`get_bookmarks`](https://developer.wordpress.org/reference/hooks/get_bookmarks/) - Filters the returned list of bookmarks.
- [`get_pages`](https://developer.wordpress.org/reference/hooks/get_pages/) - Filters the retrieved list of pages.
- [`get_the_modified_date`](https://developer.wordpress.org/reference/hooks/get_the_modified_date/) - Filters the date a post was last modified.
- [`locale_stylesheet_uri`](https://developer.wordpress.org/reference/hooks/locale_stylesheet_uri/) - Filters the localized stylesheet URI.
- [`login_errors`](https://developer.wordpress.org/reference/hooks/login_errors/) - Filters the error messages displayed above the login form.
- [`login_headerurl`](https://developer.wordpress.org/reference/hooks/login_headerurl/) - Filters link URL of the header logo above login form.
- [`login_message`](https://developer.wordpress.org/reference/hooks/login_message/) - Filters the message to display above the login form.
- [`mce_css`](https://developer.wordpress.org/reference/hooks/mce_css/) - Filters the comma-delimited list of stylesheets to load in TinyMCE.
- [`post_limits`](https://developer.wordpress.org/reference/hooks/post_limits/) - Filters the LIMIT clause of the query.
- [`postmeta_form_limit`](https://developer.wordpress.org/reference/hooks/postmeta_form_limit/) - Filters the number of custom fields to retrieve for the drop-down in the Custom Fields meta box.
- [`posts_distinct`](https://developer.wordpress.org/reference/hooks/posts_distinct/) - Filters the DISTINCT clause of the query.
- [`posts_fields`](https://developer.wordpress.org/reference/hooks/posts_fields/) - Filters the SELECT clause of the query.
- [`pre_comment_approved`](https://developer.wordpress.org/reference/hooks/pre_comment_approved/) - Filters a comment's approval status before it is set.
- [`pre_upload_error`](https://developer.wordpress.org/reference/hooks/pre_upload_error/) - Filters whether to preempt the XML-RPC media upload.
- [`query`](https://developer.wordpress.org/reference/hooks/query/) - Filters the database query.
- [`registration_errors`](https://developer.wordpress.org/reference/hooks/registration_errors/) - Filters the errors encountered when a new user is being registered.
- [`request`](https://developer.wordpress.org/reference/hooks/request/) - Filters the array of parsed query variables.
- [`rss_update_frequency`](https://developer.wordpress.org/reference/hooks/rss_update_frequency/) - Filters the RSS update frequency.
- [`rss_update_period`](https://developer.wordpress.org/reference/hooks/rss_update_period/) - Filters how often to update the RSS feed.
- [`the_editor`](https://developer.wordpress.org/reference/hooks/the_editor/) - Filters the HTML markup output that displays the editor.
- [`the_editor_content`](https://developer.wordpress.org/reference/hooks/the_editor_content/) - Filters the default editor content.
- [`the_modified_date`](https://developer.wordpress.org/reference/hooks/the_modified_date/) - Filters the date a post was last modified, for display.
- [`update_attached_file`](https://developer.wordpress.org/reference/hooks/update_attached_file/) - Filters the path to the attached file to update.
- [`user_can_richedit`](https://developer.wordpress.org/reference/hooks/user_can_richedit/) - Filters whether the user can access the visual editor.
- [`user_registration_email`](https://developer.wordpress.org/reference/hooks/user_registration_email/) - Filters the email address of a user being registered.
- [`wp_create_file_in_uploads`](https://developer.wordpress.org/reference/hooks/wp_create_file_in_uploads/) - Filters the attachment file path after the custom header or background image is set.
- [`wp_delete_file`](https://developer.wordpress.org/reference/hooks/wp_delete_file/) - Filters the path of the file to delete.
- [`wp_dropdown_cats`](https://developer.wordpress.org/reference/hooks/wp_dropdown_cats/) - Filters the taxonomy drop-down output.
- [`wp_dropdown_pages`](https://developer.wordpress.org/reference/hooks/wp_dropdown_pages/) - Filters the HTML output of a list of pages as a dropdown.
- [`wp_generate_attachment_metadata`](https://developer.wordpress.org/reference/hooks/wp_generate_attachment_metadata/) - Filters the generated attachment meta data.
- [`wp_get_attachment_metadata`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_metadata/) - Filters the attachment meta data.
- [`wp_get_attachment_thumb_url`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_thumb_url/) - Filters the attachment thumbnail URL.
- [`wp_get_attachment_url`](https://developer.wordpress.org/reference/hooks/wp_get_attachment_url/) - Filters the attachment URL.
- [`wp_handle_upload`](https://developer.wordpress.org/reference/hooks/wp_handle_upload/) - Filters the data array for the uploaded file.
- [`wp_list_categories`](https://developer.wordpress.org/reference/hooks/wp_list_categories/) - Filters the HTML output of a taxonomy list.
- [`wp_list_pages_excludes`](https://developer.wordpress.org/reference/hooks/wp_list_pages_excludes/) - Filters the array of pages to exclude from the pages list.
- [`wp_mime_type_icon`](https://developer.wordpress.org/reference/hooks/wp_mime_type_icon/) - Filters the mime type icon.
- [`wp_redirect`](https://developer.wordpress.org/reference/hooks/wp_redirect/) - Filters the redirect location.
- [`wp_update_attachment_metadata`](https://developer.wordpress.org/reference/hooks/wp_update_attachment_metadata/) - Filters the updated attachment meta data.

### Changes

_No changes in this version._

## WordPress 2.0

### New Actions

- [`activate_{$plugin}`](https://developer.wordpress.org/reference/hooks/activate_plugin/) - Fires as a specific plugin is being activated.
- [`activity_box_end`](https://developer.wordpress.org/reference/hooks/activity_box_end/) - Fires at the end of the 'At a Glance' dashboard widget.
- [`add_attachment`](https://developer.wordpress.org/reference/hooks/add_attachment/) - Fires once an attachment has been added.
- [`add_link`](https://developer.wordpress.org/reference/hooks/add_link/) - Fires after a link was added to the database.
- [`atom_entry`](https://developer.wordpress.org/reference/hooks/atom_entry/) - Fires at the end of each Atom feed item.
- [`atom_head`](https://developer.wordpress.org/reference/hooks/atom_head/) - Fires just before the first Atom feed entry.
- [`atom_ns`](https://developer.wordpress.org/reference/hooks/atom_ns/) - Fires at end of the Atom feed root to add namespaces.
- [`deactivate_{$plugin}`](https://developer.wordpress.org/reference/hooks/deactivate_plugin/) - Fires as a specific plugin is being deactivated.
- [`delete_attachment`](https://developer.wordpress.org/reference/hooks/delete_attachment/) - Fires before an attachment is deleted, at the start of wp_delete_attachment().
- [`delete_link`](https://developer.wordpress.org/reference/hooks/delete_link/) - Fires before a link is deleted.
- [`delete_user`](https://developer.wordpress.org/reference/hooks/delete_user/) - Fires immediately before a user is deleted from the site.
- [`edit_attachment`](https://developer.wordpress.org/reference/hooks/edit_attachment/) - Fires once an existing attachment has been updated.
- [`edit_link`](https://developer.wordpress.org/reference/hooks/edit_link/) - Fires after a link was updated in the database.
- [`edit_user_profile`](https://developer.wordpress.org/reference/hooks/edit_user_profile/) - Fires after the 'About the User' settings table on the 'Edit User' screen.
- [`loop_end`](https://developer.wordpress.org/reference/hooks/loop_end/) - Fires once the loop has ended.
- [`loop_start`](https://developer.wordpress.org/reference/hooks/loop_start/) - Fires once the loop is started.
- [`personal_options_update`](https://developer.wordpress.org/reference/hooks/personal_options_update/) - Fires before the page loads on the 'Profile' editing screen.
- [`pre_get_posts`](https://developer.wordpress.org/reference/hooks/pre_get_posts/) - Fires after the query variable object is created, but before the actual query is run.
- [`pre_ping`](https://developer.wordpress.org/reference/hooks/pre_ping/) - Fires just before pinging back links found in a post.
- [`profile_personal_options`](https://developer.wordpress.org/reference/hooks/profile_personal_options/) - Fires after the 'Personal Options' settings table on the 'Profile' editing screen.
- [`profile_update`](https://developer.wordpress.org/reference/hooks/profile_update/) - Fires immediately after an existing user is updated.
- [`rdf_header`](https://developer.wordpress.org/reference/hooks/rdf_header/) - Fires at the end of the RDF feed header.
- [`rdf_item`](https://developer.wordpress.org/reference/hooks/rdf_item/) - Fires at the end of each RDF feed item.
- [`rdf_ns`](https://developer.wordpress.org/reference/hooks/rdf_ns/) - Fires at the end of the feed root to add namespaces.
- [`rss2_head`](https://developer.wordpress.org/reference/hooks/rss2_head/) - Fires at the end of the RSS2 Feed Header.
- [`rss2_item`](https://developer.wordpress.org/reference/hooks/rss2_item/) - Fires at the end of each RSS2 feed item.
- [`rss2_ns`](https://developer.wordpress.org/reference/hooks/rss2_ns/) - Fires at the end of the RSS root to add namespaces.
- [`rss_head`](https://developer.wordpress.org/reference/hooks/rss_head/) - Fires at the end of the RSS Feed Header.
- [`rss_item`](https://developer.wordpress.org/reference/hooks/rss_item/) - Fires at the end of each RSS feed item.
- [`sanitize_comment_cookies`](https://developer.wordpress.org/reference/hooks/sanitize_comment_cookies/) (2.0.11) - Fires when comment cookies are sanitized.
- [`set_current_user`](https://developer.wordpress.org/reference/hooks/set_current_user/) (2.0.1) - Fires after the current user is set.
- [`show_user_profile`](https://developer.wordpress.org/reference/hooks/show_user_profile/) - Fires after the 'About Yourself' settings table on the 'Profile' editing screen.
- [`update_option_{$option}`](https://developer.wordpress.org/reference/hooks/update_option_option/) (2.0.1) - Fires after the value of a specific option has been successfully updated.
- [`wp_insert_post`](https://developer.wordpress.org/reference/hooks/wp_insert_post/) - Fires once a post has been saved.

### New Filters

- [`add_ping`](https://developer.wordpress.org/reference/hooks/add_ping/) - Filters the new ping URL to add for the given post.
- [`attachment_link`](https://developer.wordpress.org/reference/hooks/attachment_link/) - Filters the permalink for an attachment.
- [`attribute_escape`](https://developer.wordpress.org/reference/hooks/attribute_escape/) (2.0.6) - Filters a string cleaned and escaped for output in an HTML attribute.
- [`bloginfo_url`](https://developer.wordpress.org/reference/hooks/bloginfo_url/) (2.0.5) - Filters the URL returned by get_bloginfo().
- [`comment_edit_pre`](https://developer.wordpress.org/reference/hooks/comment_edit_pre/) - Filters the comment content before editing.
- [`comment_post_redirect`](https://developer.wordpress.org/reference/hooks/comment_post_redirect/) (2.0.5) - Filters the location URI to send the commenter after posting.
- [`get_enclosed`](https://developer.wordpress.org/reference/hooks/get_enclosed/) - Filters the list of enclosures already enclosed for the given post.
- [`get_pung`](https://developer.wordpress.org/reference/hooks/get_pung/) - Filters the list of already-pinged URLs for the given post.
- [`get_the_modified_time`](https://developer.wordpress.org/reference/hooks/get_the_modified_time/) - Filters the localized time a post was last modified.
- [`get_to_ping`](https://developer.wordpress.org/reference/hooks/get_to_ping/) - Filters the list of URLs yet to ping for the given post.
- [`get_users_drafts`](https://developer.wordpress.org/reference/hooks/get_users_drafts/) - Filters the SQL query string for the user's drafts query.
- [`gettext`](https://developer.wordpress.org/reference/hooks/gettext/) (2.0.11) - Filters text with its translation.
- [`icon_dir`](https://developer.wordpress.org/reference/hooks/icon_dir/) - Filters the icon directory path.
- [`icon_dir_uri`](https://developer.wordpress.org/reference/hooks/icon_dir_uri/) - Filters the icon directory URI.
- [`js_escape`](https://developer.wordpress.org/reference/hooks/js_escape/) (2.0.6) - Filters a string cleaned and escaped for output in JavaScript.
- [`mce_buttons`](https://developer.wordpress.org/reference/hooks/mce_buttons/) - Filters the first-row list of TinyMCE buttons (Visual tab).
- [`mce_buttons_2`](https://developer.wordpress.org/reference/hooks/mce_buttons_2/) - Filters the second-row list of TinyMCE buttons (Visual tab).
- [`mce_buttons_3`](https://developer.wordpress.org/reference/hooks/mce_buttons_3/) - Filters the third-row list of TinyMCE buttons (Visual tab).
- [`posts_groupby`](https://developer.wordpress.org/reference/hooks/posts_groupby/) - Filters the GROUP BY clause of the query.
- [`posts_request`](https://developer.wordpress.org/reference/hooks/posts_request/) - Filters the completed SQL query before sending.
- [`pre_category_nicename`](https://developer.wordpress.org/reference/hooks/pre_category_nicename/) (2.0.3) - Filters the category nicename before it is sanitized.
- [`pre_user_description`](https://developer.wordpress.org/reference/hooks/pre_user_description/) (2.0.3) - Filters a user's description before the user is created or updated.
- [`pre_user_display_name`](https://developer.wordpress.org/reference/hooks/pre_user_display_name/) (2.0.3) - Filters a user's display name before the user is created or updated.
- [`pre_user_email`](https://developer.wordpress.org/reference/hooks/pre_user_email/) (2.0.3) - Filters a user's email before the user is created or updated.
- [`pre_user_first_name`](https://developer.wordpress.org/reference/hooks/pre_user_first_name/) (2.0.3) - Filters a user's first name before the user is created or updated.
- [`pre_user_last_name`](https://developer.wordpress.org/reference/hooks/pre_user_last_name/) (2.0.3) - Filters a user's last name before the user is created or updated.
- [`pre_user_login`](https://developer.wordpress.org/reference/hooks/pre_user_login/) (2.0.3) - Filters a username after it has been sanitized.
- [`pre_user_nicename`](https://developer.wordpress.org/reference/hooks/pre_user_nicename/) (2.0.3) - Filters a user's nicename before the user is created or updated.
- [`pre_user_nickname`](https://developer.wordpress.org/reference/hooks/pre_user_nickname/) (2.0.3) - Filters a user's nickname before the user is created or updated.
- [`pre_user_url`](https://developer.wordpress.org/reference/hooks/pre_user_url/) (2.0.3) - Filters a user's URL before the user is created or updated.
- [`prepend_attachment`](https://developer.wordpress.org/reference/hooks/prepend_attachment/) - Filters the attachment markup to be prepended to the post content.
- [`preview_post_link`](https://developer.wordpress.org/reference/hooks/preview_post_link/) (2.0.5) - Filters the URL used for a post preview.
- [`role_has_cap`](https://developer.wordpress.org/reference/hooks/role_has_cap/) - Filters which capabilities a role has.
- [`sanitize_user`](https://developer.wordpress.org/reference/hooks/sanitize_user/) (2.0.1) - Filters a sanitized username string.
- [`single_cat_title`](https://developer.wordpress.org/reference/hooks/single_cat_title/) (2.0.10) - Filters the category archive page title.
- [`the_modified_time`](https://developer.wordpress.org/reference/hooks/the_modified_time/) - Filters the localized time a post was last modified, for display.
- [`upload_dir`](https://developer.wordpress.org/reference/hooks/upload_dir/) - Filters the uploads directory data.
- [`upload_mimes`](https://developer.wordpress.org/reference/hooks/upload_mimes/) - Filters the list of allowed mime types and file extensions.
- [`user_has_cap`](https://developer.wordpress.org/reference/hooks/user_has_cap/) - Dynamically filter a user's capabilities.
- [`validate_username`](https://developer.wordpress.org/reference/hooks/validate_username/) (2.0.1) - Filters whether the provided username is valid.
- [`wp_title`](https://developer.wordpress.org/reference/hooks/wp_title/) - Filters the text of the page title.

### Changes

_No changes in this version._

## WordPress 1.5

### New Actions

- [`admin_menu`](https://developer.wordpress.org/reference/hooks/admin_menu/) - Fires before the administration menu loads in the admin.
- [`check_admin_referer`](https://developer.wordpress.org/reference/hooks/check_admin_referer/) (1.5.1) - Fires once the admin request has been validated or not.
- [`check_passwords`](https://developer.wordpress.org/reference/hooks/check_passwords/) (1.5.1) - Fires before the password and confirm password fields are checked for congruity.
- [`comment_closed`](https://developer.wordpress.org/reference/hooks/comment_closed/) - Fires when a comment is attempted on a post that has comments closed.
- [`comment_flood_trigger`](https://developer.wordpress.org/reference/hooks/comment_flood_trigger/) - Fires before the comment flood message is triggered.
- [`comment_form`](https://developer.wordpress.org/reference/hooks/comment_form/) - Fires at the bottom of the comment form, inside the closing form tag.
- [`comment_id_not_found`](https://developer.wordpress.org/reference/hooks/comment_id_not_found/) - Fires when a comment is attempted on a post that does not exist.
- [`comment_on_draft`](https://developer.wordpress.org/reference/hooks/comment_on_draft/) (1.5.1) - Fires when a comment is attempted on a post in draft mode.
- [`edit_form_advanced`](https://developer.wordpress.org/reference/hooks/edit_form_advanced/) - Fires after 'normal' context meta boxes have been output for all post types other than 'page'.
- [`edit_page_form`](https://developer.wordpress.org/reference/hooks/edit_page_form/) - Fires after 'normal' context meta boxes have been output for the 'page' post type.
- [`generate_rewrite_rules`](https://developer.wordpress.org/reference/hooks/generate_rewrite_rules/) - Fires after the rewrite rules are generated.
- [`init`](https://developer.wordpress.org/reference/hooks/init/) - Fires after WordPress has finished loading but before any headers are sent.
- [`load-{$plugin_page}`](https://developer.wordpress.org/reference/hooks/load-plugin_page/) - Fires before a particular screen is loaded.
- [`lost_password`](https://developer.wordpress.org/reference/hooks/lost_password/) (1.5.1) - Fires before the lost password form.
- [`manage_posts_custom_column`](https://developer.wordpress.org/reference/hooks/manage_posts_custom_column/) - Fires in each custom column in the Posts list table.
- [`parse_query`](https://developer.wordpress.org/reference/hooks/parse_query/) - Fires after the main query vars have been parsed.
- [`password_reset`](https://developer.wordpress.org/reference/hooks/password_reset/) - Fires before the user's password is reset.
- [`plugins_loaded`](https://developer.wordpress.org/reference/hooks/plugins_loaded/) - Fires once activated plugins have loaded.
- [`retrieve_password`](https://developer.wordpress.org/reference/hooks/retrieve_password/) (1.5.1) - Fires before a new password is retrieved.
- [`save_post`](https://developer.wordpress.org/reference/hooks/save_post/) - Fires once a post has been saved.
- [`switch_theme`](https://developer.wordpress.org/reference/hooks/switch_theme/) - Fires after the theme is switched.
- [`template_redirect`](https://developer.wordpress.org/reference/hooks/template_redirect/) - Fires before determining which template to load.
- [`user_register`](https://developer.wordpress.org/reference/hooks/user_register/) - Fires immediately after a new user is registered.
- [`wp_authenticate`](https://developer.wordpress.org/reference/hooks/wp_authenticate/) (1.5.1) - Fires before the user is authenticated.
- [`wp_footer`](https://developer.wordpress.org/reference/hooks/wp_footer/) (1.5.1) - Prints scripts or data before the closing body tag on the front end.
- [`wp_head`](https://developer.wordpress.org/reference/hooks/wp_head/) - Prints scripts or data in the head tag on the front end.
- [`wp_login`](https://developer.wordpress.org/reference/hooks/wp_login/) - Fires after the user has successfully logged in.
- [`wp_logout`](https://developer.wordpress.org/reference/hooks/wp_logout/) - Fires after a user is logged out.
- [`wp_meta`](https://developer.wordpress.org/reference/hooks/wp_meta/) - Fires before displaying echoed content in the sidebar.
- [`wp_set_comment_status`](https://developer.wordpress.org/reference/hooks/wp_set_comment_status/) - Fires immediately after transitioning a comment's status from one to another in the database and removing the comment from the object cache, but prior to all status transition hooks.

### New Filters

- [`author_feed_link`](https://developer.wordpress.org/reference/hooks/author_feed_link/) (1.5.1) - Filters the feed link for a given author.
- [`author_rewrite_rules`](https://developer.wordpress.org/reference/hooks/author_rewrite_rules/) - Filters rewrite rules used for author archives.
- [`category_feed_link`](https://developer.wordpress.org/reference/hooks/category_feed_link/) (1.5.1) - Filters the category feed link.
- [`category_link`](https://developer.wordpress.org/reference/hooks/category_link/) - Filters the category link.
- [`comment_author_rss`](https://developer.wordpress.org/reference/hooks/comment_author_rss/) - Filters the current comment author for use in a feed.
- [`comment_moderation_subject`](https://developer.wordpress.org/reference/hooks/comment_moderation_subject/) (1.5.2) - Filters the comment moderation email subject.
- [`comment_moderation_text`](https://developer.wordpress.org/reference/hooks/comment_moderation_text/) (1.5.2) - Filters the comment moderation email text.
- [`comment_notification_headers`](https://developer.wordpress.org/reference/hooks/comment_notification_headers/) (1.5.2) - Filters the comment notification email headers.
- [`comment_notification_subject`](https://developer.wordpress.org/reference/hooks/comment_notification_subject/) (1.5.2) - Filters the comment notification email subject.
- [`comment_notification_text`](https://developer.wordpress.org/reference/hooks/comment_notification_text/) (1.5.2) - Filters the comment notification email text.
- [`comment_save_pre`](https://developer.wordpress.org/reference/hooks/comment_save_pre/) - Filters the comment content before it is updated in the database.
- [`comment_text_rss`](https://developer.wordpress.org/reference/hooks/comment_text_rss/) - Filters the current comment content for use in a feed.
- [`comments_number`](https://developer.wordpress.org/reference/hooks/comments_number/) - Filters the comments count for display.
- [`comments_rewrite_rules`](https://developer.wordpress.org/reference/hooks/comments_rewrite_rules/) - Filters rewrite rules used for comment feed archives.
- [`comments_template`](https://developer.wordpress.org/reference/hooks/comments_template/) (1.5.1) - Filters the path to the theme template file used for the comments template.
- [`date_rewrite_rules`](https://developer.wordpress.org/reference/hooks/date_rewrite_rules/) - Filters rewrite rules used for date archives.
- [`day_link`](https://developer.wordpress.org/reference/hooks/day_link/) - Filters the day archive permalink.
- [`default_content`](https://developer.wordpress.org/reference/hooks/default_content/) - Filters the default post content initially used in the "Write Post" form.
- [`default_excerpt`](https://developer.wordpress.org/reference/hooks/default_excerpt/) - Filters the default post excerpt initially used in the "Write Post" form.
- [`default_title`](https://developer.wordpress.org/reference/hooks/default_title/) - Filters the default post title initially used in the "Write Post" form.
- [`feed_link`](https://developer.wordpress.org/reference/hooks/feed_link/) - Filters the feed type permalink.
- [`get_comment_ID`](https://developer.wordpress.org/reference/hooks/get_comment_ID/) - Filters the returned comment ID.
- [`get_comment_author`](https://developer.wordpress.org/reference/hooks/get_comment_author/) - Filters the returned comment author name.
- [`get_comment_author_IP`](https://developer.wordpress.org/reference/hooks/get_comment_author_IP/) - Filters the comment author's returned IP address.
- [`get_comment_author_email`](https://developer.wordpress.org/reference/hooks/get_comment_author_email/) - Filters the comment author's returned email address.
- [`get_comment_author_link`](https://developer.wordpress.org/reference/hooks/get_comment_author_link/) - Filters the comment author's link for display.
- [`get_comment_author_url`](https://developer.wordpress.org/reference/hooks/get_comment_author_url/) - Filters the comment author's URL.
- [`get_comment_author_url_link`](https://developer.wordpress.org/reference/hooks/get_comment_author_url_link/) - Filters the comment author's returned URL link.
- [`get_comment_date`](https://developer.wordpress.org/reference/hooks/get_comment_date/) - Filters the returned comment date.
- [`get_comment_excerpt`](https://developer.wordpress.org/reference/hooks/get_comment_excerpt/) - Filters the retrieved comment excerpt.
- [`get_comment_text`](https://developer.wordpress.org/reference/hooks/get_comment_text/) - Filters the text of a comment.
- [`get_comment_time`](https://developer.wordpress.org/reference/hooks/get_comment_time/) - Filters the returned comment time.
- [`get_comment_type`](https://developer.wordpress.org/reference/hooks/get_comment_type/) - Filters the returned comment type.
- [`get_comments_number`](https://developer.wordpress.org/reference/hooks/get_comments_number/) - Filters the returned comment count for a post.
- [`get_the_guid`](https://developer.wordpress.org/reference/hooks/get_the_guid/) - Filters the Global Unique Identifier (guid) of the post.
- [`get_the_time`](https://developer.wordpress.org/reference/hooks/get_the_time/) - Filters the time of the post.
- [`locale`](https://developer.wordpress.org/reference/hooks/locale/) - Filters the locale ID of the WordPress installation.
- [`loginout`](https://developer.wordpress.org/reference/hooks/loginout/) - Filters the HTML output for the Log In/Log Out link.
- [`manage_posts_columns`](https://developer.wordpress.org/reference/hooks/manage_posts_columns/) - Filters the columns displayed in the Posts list table.
- [`mod_rewrite_rules`](https://developer.wordpress.org/reference/hooks/mod_rewrite_rules/) - Filters the list of rewrite rules formatted for output to an .htaccess file.
- [`month_link`](https://developer.wordpress.org/reference/hooks/month_link/) - Filters the month archive permalink.
- [`option_{$option}`](https://developer.wordpress.org/reference/hooks/option_option/) - Filters the value of an existing option.
- [`page_link`](https://developer.wordpress.org/reference/hooks/page_link/) - Filters the permalink for a page.
- [`page_rewrite_rules`](https://developer.wordpress.org/reference/hooks/page_rewrite_rules/) - Filters rewrite rules used for "page" post type archives.
- [`post_comments_feed_link`](https://developer.wordpress.org/reference/hooks/post_comments_feed_link/) (1.5.1) - Filters the post comments feed permalink.
- [`post_link`](https://developer.wordpress.org/reference/hooks/post_link/) - Filters the permalink for a post.
- [`post_rewrite_rules`](https://developer.wordpress.org/reference/hooks/post_rewrite_rules/) - Filters rewrite rules used for "post" archives.
- [`posts_join`](https://developer.wordpress.org/reference/hooks/posts_join/) - Filters the JOIN clause of the query.
- [`posts_join_paged`](https://developer.wordpress.org/reference/hooks/posts_join_paged/) - Filters the JOIN clause of the query.
- [`posts_orderby`](https://developer.wordpress.org/reference/hooks/posts_orderby/) (1.5.1) - Filters the ORDER BY clause of the query.
- [`posts_where`](https://developer.wordpress.org/reference/hooks/posts_where/) - Filters the WHERE clause of the query.
- [`posts_where_paged`](https://developer.wordpress.org/reference/hooks/posts_where_paged/) - Filters the WHERE clause of the query.
- [`pre_comment_author_email`](https://developer.wordpress.org/reference/hooks/pre_comment_author_email/) - Filters the comment author's email cookie before it is set.
- [`pre_comment_author_name`](https://developer.wordpress.org/reference/hooks/pre_comment_author_name/) - Filters the comment author's name cookie before it is set.
- [`pre_comment_author_url`](https://developer.wordpress.org/reference/hooks/pre_comment_author_url/) - Filters the comment author's URL cookie before it is set.
- [`pre_comment_content`](https://developer.wordpress.org/reference/hooks/pre_comment_content/) - Filters the comment content before it is set.
- [`pre_comment_user_agent`](https://developer.wordpress.org/reference/hooks/pre_comment_user_agent/) - Filters the comment author's browser user agent before it is set.
- [`pre_comment_user_ip`](https://developer.wordpress.org/reference/hooks/pre_comment_user_ip/) - Filters the comment author's IP address before it is set.
- [`pre_option_{$option}`](https://developer.wordpress.org/reference/hooks/pre_option_option/) - Filters the value of an existing option before it is retrieved.
- [`pre_user_id`](https://developer.wordpress.org/reference/hooks/pre_user_id/) - Filters the comment author's user ID before it is set.
- [`preprocess_comment`](https://developer.wordpress.org/reference/hooks/preprocess_comment/) - Filters a comment's data before it is sanitized and inserted into the database.
- [`query_vars`](https://developer.wordpress.org/reference/hooks/query_vars/) - Filters the query variables allowed before processing.
- [`register`](https://developer.wordpress.org/reference/hooks/register/) - Filters the HTML link to the Registration or Admin page.
- [`rewrite_rules_array`](https://developer.wordpress.org/reference/hooks/rewrite_rules_array/) - Filters the full set of generated rewrite rules.
- [`root_rewrite_rules`](https://developer.wordpress.org/reference/hooks/root_rewrite_rules/) - Filters rewrite rules used for root-level archives.
- [`search_rewrite_rules`](https://developer.wordpress.org/reference/hooks/search_rewrite_rules/) - Filters rewrite rules used for search archives.
- [`show_password_fields`](https://developer.wordpress.org/reference/hooks/show_password_fields/) (1.5.1) - Filters the display of the password fields.
- [`stylesheet`](https://developer.wordpress.org/reference/hooks/stylesheet/) - Filters the name of current stylesheet.
- [`stylesheet_directory`](https://developer.wordpress.org/reference/hooks/stylesheet_directory/) - Filters the stylesheet directory path for the active theme.
- [`stylesheet_directory_uri`](https://developer.wordpress.org/reference/hooks/stylesheet_directory_uri/) - Filters the stylesheet directory URI.
- [`stylesheet_uri`](https://developer.wordpress.org/reference/hooks/stylesheet_uri/) - Filters the URI of the active theme stylesheet.
- [`template`](https://developer.wordpress.org/reference/hooks/template/) - Filters the name of the active theme.
- [`template_directory`](https://developer.wordpress.org/reference/hooks/template_directory/) - Filters the active theme directory path.
- [`template_directory_uri`](https://developer.wordpress.org/reference/hooks/template_directory_uri/) - Filters the active theme directory URI.
- [`the_permalink`](https://developer.wordpress.org/reference/hooks/the_permalink/) - Filters the display of the permalink for the current post.
- [`the_posts`](https://developer.wordpress.org/reference/hooks/the_posts/) - Filters the array of retrieved posts after they've been fetched and internally processed.
- [`theme_root`](https://developer.wordpress.org/reference/hooks/theme_root/) - Filters the absolute path to the themes directory.
- [`theme_root_uri`](https://developer.wordpress.org/reference/hooks/theme_root_uri/) - Filters the URI for themes directory.
- [`wp_list_pages`](https://developer.wordpress.org/reference/hooks/wp_list_pages/) (1.5.1) - Filters the HTML output of the pages to list.
- [`xmlrpc_methods`](https://developer.wordpress.org/reference/hooks/xmlrpc_methods/) - Filters the methods exposed by the XML-RPC server.
- [`year_link`](https://developer.wordpress.org/reference/hooks/year_link/) - Filters the year archive permalink.
- [`{$type}_template`](https://developer.wordpress.org/reference/hooks/type_template/) - Filters the path of the queried template by type.

### Changes

- [`option_{$option}`](https://developer.wordpress.org/reference/hooks/option_option/) - As 'option_' . $setting

## WordPress 1.2

### New Actions

- [`admin_footer`](https://developer.wordpress.org/reference/hooks/admin_footer/) - Prints scripts or data before the default footer scripts.
- [`comment_post`](https://developer.wordpress.org/reference/hooks/comment_post/) - Fires immediately after a comment is inserted into the database.
- [`delete_comment`](https://developer.wordpress.org/reference/hooks/delete_comment/) - Fires immediately before a comment is deleted from the database.
- [`delete_post`](https://developer.wordpress.org/reference/hooks/delete_post/) - Fires immediately before a post is deleted from the database.
- [`edit_comment`](https://developer.wordpress.org/reference/hooks/edit_comment/) - Fires immediately after a comment is updated in the database.
- [`edit_post`](https://developer.wordpress.org/reference/hooks/edit_post/) - Fires once an existing post has been updated.
- [`publish_phone`](https://developer.wordpress.org/reference/hooks/publish_phone/) - Fires after a post submitted by email is published.
- [`shutdown`](https://developer.wordpress.org/reference/hooks/shutdown/) - Fires just before PHP shuts down execution.
- [`trackback_post`](https://developer.wordpress.org/reference/hooks/trackback_post/) - Fires after a trackback is added to a post.

### New Filters

- [`author_email`](https://developer.wordpress.org/reference/hooks/author_email/) - Filters the comment author's email for display.
- [`category_description`](https://developer.wordpress.org/reference/hooks/category_description/) - Filters the category description for display.
- [`comment_author`](https://developer.wordpress.org/reference/hooks/comment_author/) - Filters the comment author's name for display.
- [`comment_email`](https://developer.wordpress.org/reference/hooks/comment_email/) - Filters the comment author's email for display.
- [`comment_excerpt`](https://developer.wordpress.org/reference/hooks/comment_excerpt/) - Filters the comment excerpt for display.
- [`comment_text`](https://developer.wordpress.org/reference/hooks/comment_text/) - Filters the text of a comment to be displayed.
- [`comment_url`](https://developer.wordpress.org/reference/hooks/comment_url/) - Filters the comment author's URL for display.
- [`format_to_edit`](https://developer.wordpress.org/reference/hooks/format_to_edit/) - Filters the text to be formatted for editing.
- [`get_the_excerpt`](https://developer.wordpress.org/reference/hooks/get_the_excerpt/) - Filters the retrieved post excerpt.
- [`list_cats`](https://developer.wordpress.org/reference/hooks/list_cats/) - Filters a taxonomy drop-down display element.
- [`phone_content`](https://developer.wordpress.org/reference/hooks/phone_content/) - Filters the content of the post submitted by email before saving.
- [`sanitize_title`](https://developer.wordpress.org/reference/hooks/sanitize_title/) - Filters a sanitized title string.
- [`the_category`](https://developer.wordpress.org/reference/hooks/the_category/) - Filters the category or list of categories.
- [`the_category_rss`](https://developer.wordpress.org/reference/hooks/the_category_rss/) - Filters all of the post categories for display in a feed.
- [`the_excerpt_rss`](https://developer.wordpress.org/reference/hooks/the_excerpt_rss/) - Filters the post excerpt for a feed.
- [`the_title_rss`](https://developer.wordpress.org/reference/hooks/the_title_rss/) - Filters the post title for use in a feed.

### Changes

_No changes in this version._

## WordPress 0.71

### New Actions

- [`pingback_post`](https://developer.wordpress.org/reference/hooks/pingback_post/) - Fires after a post pingback has been sent.

### New Filters

- [`bloginfo`](https://developer.wordpress.org/reference/hooks/bloginfo/) - Filters the site information returned by get_bloginfo().
- [`single_post_title`](https://developer.wordpress.org/reference/hooks/single_post_title/) - Filters the page title for a single post.
- [`the_content`](https://developer.wordpress.org/reference/hooks/the_content/) - Filters the post content.
- [`the_date`](https://developer.wordpress.org/reference/hooks/the_date/) - Filters the date of the post, for display.
- [`the_excerpt`](https://developer.wordpress.org/reference/hooks/the_excerpt/) - Filters the displayed post excerpt.
- [`the_time`](https://developer.wordpress.org/reference/hooks/the_time/) - Filters the time of the post, for display.
- [`the_title`](https://developer.wordpress.org/reference/hooks/the_title/) - Filters the post title.
- [`the_weekday`](https://developer.wordpress.org/reference/hooks/the_weekday/) - Filters the localized weekday of the post, for display.
- [`the_weekday_date`](https://developer.wordpress.org/reference/hooks/the_weekday_date/) - Filters the localized weekday of the post, for display.

### Changes

_No changes in this version._

