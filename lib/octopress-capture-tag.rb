require "octopress-capture-tag/version"
require "octopress-tag-helpers"
require "jekyll"

module Octopress
  module Tags
    module CaptureTag
      class Tag < Liquid::Block
        SYNTAX = /([[:word:]]+)\s*(\+=|\|\|=)?/o

        def initialize(tag_name, markup, tokens)
          @markup = markup
          super
        end

        def render(context)
          return unless markup = TagHelpers::Conditional.parse(@markup, context)
          if markup =~ TagHelpers::Var::HAS_FILTERS
            markup = $1
            filters = $2
          end

          if markup =~ SYNTAX
            var      = $1
            operator = $2
            value = super.lstrip

            unless value.nil? || filters.nil?
              value = TagHelpers::Var.render_filters(value, filters, context)
            end

            context = TagHelpers::Var.set_var(var, operator, value, context)
          else
            raise SyntaxError.new("Syntax Error in 'capture' - Valid syntax: capture [var]")
          end
          ''
        end
      end
    end
  end
end

Liquid::Template.register_tag('capture', Octopress::Tags::CaptureTag::Tag)
