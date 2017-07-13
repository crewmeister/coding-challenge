require 'json'

module CmChallenge
  class Api
    class << self
      def absences
        load_file('absences.json')
      end

      def members
        load_file('members.json')
      end

      private

      def load_file(file_name)
        file = File.join(File.dirname(__FILE__), 'json_files', file_name)
        json = JSON.parse(File.read(file))
        symbolize_collection(json['payload'])
      end

      def symbolize_collection(collection)
        collection.map { |hash| symbolize_hash(hash)}
      end

      def symbolize_hash(hash)
        hash.each_with_object({}) { |(k, v), h| h[k.to_sym] = v; }
      end
    end
  end
end
