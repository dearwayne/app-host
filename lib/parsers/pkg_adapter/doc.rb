module PkgAdapter

  class Doc < BaseAdapter
    def parse
      @name = File.basename(@path)
      @ext = File.extname(@path).gsub('.', '')
    end

    def plat
      @ext
    end

    def app_uniq_key
      :build
    end

    def app_name
      @name
    end

    def app_version
      ""
    end

    def app_build
      File.mtime(@path).strftime("%Y-%m-%d %H:%M:%S")
    end

    def app_icon
    end

    def app_size
      File.size(@path)
    end

    def app_bundle_id
      @ext
    end

    def ext_info
    end

  end
end