def using_sqlite?
  false
end

def supports_concurrency?
  !using_sqlite?
end

def using_postgresql?
  true
end

def postgresql_version
  if using_postgresql?
    ActsAsTaggableOn::Utils.connection.execute('SHOW SERVER_VERSION').first['server_version'].to_f
  else
    0.0
  end
end

def postgresql_support_json?
  true
end


def using_mysql?
  false
end

def using_case_insensitive_collation?
  false
end
