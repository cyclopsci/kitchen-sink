Exec {
  path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
}

filebucket { 'main':
  server   => 'localhost.localdomain'
  path   => "false",
}

File { backup => 'main' }

import 'nodes/*'
