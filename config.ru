require './config/environment'

begin
  fi_check_migration

  use GenresController
  use ArtistsController
  use SongsController
  use Rack::MethodOverride
  run ApplicationController
rescue ActiveRecord::PendingMigrationError => err
  STDERR.puts err
  exit 1
end
