task clean_cache: :environment do
  rm_r FileList['tmp/cache/*']
end
