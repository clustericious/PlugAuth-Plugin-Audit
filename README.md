# PlugAuth::Plugin::Audit

Audit log for authentication/authorization

# SYNOPSIS

PlugAuth.conf:

    ---
    plugins:
      - PlugAuth::Plugin::Audit: {}

# ROUTES

## Public routes

These routes work for unauthenticated and unauthorized users.

### GET /audit

You can do a simple GET on this route to see if the plugin is loaded.
It will return a JSON string with the version of the plugin as the body
and 200 if the plugin is available, if not [PlugAuth](http://search.cpan.org/perldoc?PlugAuth) will return 404.

## Accounts Routes

These routes are available to users authenticates and authorized to perform
the 'accounts' action.

### GET /audit/:year/:month/:day

Return the audit entries for the given day.

### GET /audit/today

Redirects to the appropriate URL for todays audit log.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
