class LessonSearchTerm < ApplicationRecord

    attr_reader :where_clause, :where_args, :order
    def initialize(search_term)
      search_term = search_term.downcase
      @where_clause = ""
      @where_args = {}
      build_title_search(search_term)
    end

    private


      def build_title_search(search_term)

        search_array = search_term.split(' ')
        num_terms = search_array.length
        search_term = search_array.shift

        @where_clause << case_insensitive_search(:title)
        @where_args[:title] = starts_with(search_term)

        # if num_terms == 1
        #   @where_clause << " OR #{case_insensitive_search(:last_name)}"
        #   @where_args[:last_name] = starts_with(search_term)
        # elsif num_terms == 2
          # last_name = search_array.shift
          # @where_clause << " AND #{case_insensitive_search(:last_name)}"
          # @where_args[:last_name] = starts_with(last_name)
        #end

        @order = "title asc"
      end

      def starts_with(search_token)
        search_token + "%"
      end

      def case_insensitive_search(field_name)
        "lower(#{field_name}) like :#{field_name}"
      end


end
