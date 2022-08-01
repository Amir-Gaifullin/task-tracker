task :clean_cache do
    rm_r FileList["tmp/cache/*"]
end