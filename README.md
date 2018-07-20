# bootstrap_renderer
Custom renderer for WillPaginate gem (https://github.com/mislav/will_paginate)
The goal was to make pagination look as per: https://getbootstrap.com/docs/4.1/components/pagination/

## Usage:
- Require the file in your rails projects or put it somewhere in your projects so that it will be loaded automatically
- Put in the view:
`<%= will_paginate(records, renderer: ActionView::BootstrapRenderer) %>`
And that's it!
