require 'fileutils'
module FileOperations
  # File Operations
  class FileOperation
    def self.mkdir(dir_name)
      FileUtils.mkdir_p dir_name
    end

    def self.basename(filename)
      File.basename(filename)
    end

    def self.extname(path)
      File.extname(path)
    end

    def self.split(path)
      File.split(path)
    end

    def self.prepare_path(path)
      path = split(path)
      FileValidation.directory?(path.first) || mkdir(path.first)
    end
  end

  # File Validation
  class FileValidation
    def self.exist?(filename)
      File.exist?(filename)
    end

    def self.directory?(path)
      File.directory?(path)
    end

    def self.valid_format?(extname)
      format = ['JPG', 'JPEG', 'PNG', 'GIF']
      format.include?(extname)
    end
  end
end
