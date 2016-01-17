#!/bin/env ruby
# encoding: utf-8

require 'pry'
require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/faroes-logting-wikipedia', column: 'identifier__wikipedia_fo')
EveryPolitician::Wikidata.scrape_wikidata(names: { fo: names }, output: false)
warn EveryPolitician::Wikidata.notify_rebuilder

