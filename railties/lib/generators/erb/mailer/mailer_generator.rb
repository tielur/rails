module Erb
  module Generators
    class MailerGenerator < Base
      argument :actions, :type => :array, :default => []

      def create_view_files
        actions.each do |action|
          @action, @path = action, File.join(file_path, action)
          template "view.erb", File.join("app", "views", "#{@path}.erb")
        end
      end
    end
  end
end
