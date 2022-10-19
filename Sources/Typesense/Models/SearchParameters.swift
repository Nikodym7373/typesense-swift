//
// SearchParameters.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SearchParameters: Codable {

    /** The query text to search for in the collection. Use * as the search string to return all documents. This is typically useful when used in conjunction with filter_by. */
    public var q: String
    /** A list of &#x60;string&#x60; fields that should be queried against. Multiple fields are separated with a comma. */
    public var queryBy: String
    /** The relative weight to give each &#x60;query_by&#x60; field when ranking results. This can be used to boost fields in priority, when looking for matches. Multiple fields are separated with a comma. */
    public var queryByWeights: String?
    /** Maximum number of hits returned. Increasing this value might increase search latency. Default: 500. Use &#x60;all&#x60; to return all hits found.  */
    public var maxHits: String?
    /** Boolean field to indicate that the last word in the query should be treated as a prefix, and not as a whole word. This is used for building autocomplete and instant search interfaces. Defaults to true. */
    public var _prefix: String?
    /** Filter conditions for refining youropen api validator search results. Separate multiple conditions with &amp;&amp;. */
    public var inFix: String?
    /** infix searching can be done on a per-field basis by sending a comma separated string */
    public var filterBy: String?
    /** A list of numerical fields and their corresponding sort orders that will be used for ordering your results. Up to 3 sort fields can be specified. The text similarity score is exposed as a special &#x60;_text_match&#x60; field that you can use in the list of sorting fields. If no &#x60;sort_by&#x60; parameter is specified, results are sorted by &#x60;_text_match:desc,default_sorting_field:desc&#x60; */
    public var sortBy: String?
    /** A list of fields that will be used for faceting your results on. Separate multiple fields with a comma. */
    public var facetBy: String?
    /** Maximum number of facet values to be returned. */
    public var maxFacetValues: Int?
    /** Facet values that are returned can now be filtered via this parameter. The matching facet text is also highlighted. For example, when faceting by &#x60;category&#x60;, you can set &#x60;facet_query&#x3D;category:shoe&#x60; to return only facet values that contain the prefix \&quot;shoe\&quot;. */
    public var facetQuery: String?
    /** The number of typographical errors (1 or 2) that would be tolerated. Default: 2  */
    public var numTypos: Int?
    /** Results from this specific page number would be fetched. */
    public var page: Int?
    /** Number of results to fetch per page. Default: 10 */
    public var perPage: Int?
    /** You can aggregate search results into groups or buckets by specify one or more &#x60;group_by&#x60; fields. Separate multiple fields with a comma. To group on a particular field, it must be a faceted field. */
    public var groupBy: String?
    /** Maximum number of hits to be returned for every group. If the &#x60;group_limit&#x60; is set as &#x60;K&#x60; then only the top K hits in each group are returned in the response. Default: 3  */
    public var groupLimit: Int?
    /** List of fields from the document to include in the search result */
    public var includeFields: String?
    /** List of fields from the document to exclude in the search result */
    public var excludeFields: String?
    /** List of fields which should be highlighted fully without snippeting */
    public var highlightFullFields: String?
    /** The number of tokens that should surround the highlighted text on each side. Default: 4  */
    public var highlightAffixNumTokens: Int?
    /** The start tag used for the highlighted snippets. Default: &#x60;&lt;mark&gt;&#x60;  */
    public var highlightStartTag: String?
    /** The end tag used for the highlighted snippets. Default: &#x60;&lt;/mark&gt;&#x60;  */
    public var highlightEndTag: String?
    /** Field values under this length will be fully highlighted, instead of showing a snippet of relevant portion. Default: 30  */
    public var snippetThreshold: Int?
    /** If the number of results found for a specific query is less than this number, Typesense will attempt to drop the tokens in the query until enough results are found. Tokens that have the least individual hits are dropped first. Set to 0 to disable. Default: 10  */
    public var dropTokensThreshold: Int?
    /** If the number of results found for a specific query is less than this number, Typesense will attempt to look for tokens with more typos until enough results are found. Default: 100  */
    public var typoTokensThreshold: Int?
    /** A list of records to unconditionally include in the search results at specific positions. An example use case would be to feature or promote certain items on the top of search results. A list of &#x60;record_id:hit_position&#x60;. Eg: to include a record with ID 123 at Position 1 and another record with ID 456 at Position 5, you&#x27;d specify &#x60;123:1,456:5&#x60;. You could also use the Overrides feature to override search results based on rules. Overrides are applied first, followed by &#x60;pinned_hits&#x60; and  finally &#x60;hidden_hits&#x60;.  */
    public var pinnedHits: String?
    /** A list of records to unconditionally hide from search results. A list of &#x60;record_id&#x60;s to hide. Eg: to hide records with IDs 123 and 456, you&#x27;d specify &#x60;123,456&#x60;. You could also use the Overrides feature to override search results based on rules. Overrides are applied first, followed by &#x60;pinned_hits&#x60; and finally &#x60;hidden_hits&#x60;.  */
    public var hiddenHits: String?
    /** A list of custom fields that must be highlighted even if you don&#x27;t query  for them  */
    public var highlightFields: String?
    /** You can index content from any logographic language into Typesense if you are able to segment / split the text into space-separated words yourself  before indexing and querying. Set this parameter to tre to do the same  */
    public var preSegmentedQuery: Bool?
    /** If you have some overrides defined but want to disable all of them during query time, you can do that by setting this parameter to false  */
    public var enableOverrides: Bool?
    /** Set this parameter to true to ensure that an exact match is ranked above the others  */
    public var prioritizeExactMatch: Bool?
    /** Setting this to true will make Typesense consider all prefixes and typo  corrections of the words in the query without stopping early when enough results are found  (drop_tokens_threshold and typo_tokens_threshold configurations are ignored).  */
    public var exhaustiveSearch: Bool?
    /** Typesense will attempt to return results early if the cutoff time has elapsed.  This is not a strict guarantee and facet computation is not bound by this parameter.  */
    public var searchCutoffMs: Int?
    /** Enable server side caching of search query results. By default, caching is disabled.  */
    public var useCache: Bool?
    /** The duration (in seconds) that determines how long the search query is cached.  This value can be set on a per-query basis. Default: 60.  */
    public var cacheTtl: Int?
    /** Minimum word length for 1-typo correction to be applied.  The value of num_typos is still treated as the maximum allowed typos.  */
    public var minLen1typo: Int?
    /** Minimum word length for 2-typo correction to be applied.  The value of num_typos is still treated as the maximum allowed typos.  */
    public var minLen2typo: Int?

    public init(q: String, queryBy: String, queryByWeights: String? = nil, maxHits: String? = nil, _prefix: String? = nil, inFix:String? = nil, filterBy: String? = nil, sortBy: String? = nil, facetBy: String? = nil, maxFacetValues: Int? = nil, facetQuery: String? = nil, numTypos: Int? = nil, page: Int? = nil, perPage: Int? = nil, groupBy: String? = nil, groupLimit: Int? = nil, includeFields: String? = nil, excludeFields: String? = nil, highlightFullFields: String? = nil, highlightAffixNumTokens: Int? = nil, highlightStartTag: String? = nil, highlightEndTag: String? = nil, snippetThreshold: Int? = nil, dropTokensThreshold: Int? = nil, typoTokensThreshold: Int? = nil, pinnedHits: String? = nil, hiddenHits: String? = nil, highlightFields: String? = nil, preSegmentedQuery: Bool? = nil, enableOverrides: Bool? = nil, prioritizeExactMatch: Bool? = nil, exhaustiveSearch: Bool? = nil, searchCutoffMs: Int? = nil, useCache: Bool? = nil, cacheTtl: Int? = nil, minLen1typo: Int? = nil, minLen2typo: Int? = nil) {
        self.q = q
        self.queryBy = queryBy
        self.queryByWeights = queryByWeights
        self.maxHits = maxHits
        self._prefix = _prefix
        self.inFix = inFix
        self.filterBy = filterBy
        self.sortBy = sortBy
        self.facetBy = facetBy
        self.maxFacetValues = maxFacetValues
        self.facetQuery = facetQuery
        self.numTypos = numTypos
        self.page = page
        self.perPage = perPage
        self.groupBy = groupBy
        self.groupLimit = groupLimit
        self.includeFields = includeFields
        self.excludeFields = excludeFields
        self.highlightFullFields = highlightFullFields
        self.highlightAffixNumTokens = highlightAffixNumTokens
        self.highlightStartTag = highlightStartTag
        self.highlightEndTag = highlightEndTag
        self.snippetThreshold = snippetThreshold
        self.dropTokensThreshold = dropTokensThreshold
        self.typoTokensThreshold = typoTokensThreshold
        self.pinnedHits = pinnedHits
        self.hiddenHits = hiddenHits
        self.highlightFields = highlightFields
        self.preSegmentedQuery = preSegmentedQuery
        self.enableOverrides = enableOverrides
        self.prioritizeExactMatch = prioritizeExactMatch
        self.exhaustiveSearch = exhaustiveSearch
        self.searchCutoffMs = searchCutoffMs
        self.useCache = useCache
        self.cacheTtl = cacheTtl
        self.minLen1typo = minLen1typo
        self.minLen2typo = minLen2typo
    }

    public enum CodingKeys: String, CodingKey { 
        case q
        case queryBy = "query_by"
        case queryByWeights = "query_by_weights"
        case maxHits = "max_hits"
        case _prefix = "prefix"
        case inFix = "infix"
        case filterBy = "filter_by"
        case sortBy = "sort_by"
        case facetBy = "facet_by"
        case maxFacetValues = "max_facet_values"
        case facetQuery = "facet_query"
        case numTypos = "num_typos"
        case page
        case perPage = "per_page"
        case groupBy = "group_by"
        case groupLimit = "group_limit"
        case includeFields = "include_fields"
        case excludeFields = "exclude_fields"
        case highlightFullFields = "highlight_full_fields"
        case highlightAffixNumTokens = "highlight_affix_num_tokens"
        case highlightStartTag = "highlight_start_tag"
        case highlightEndTag = "highlight_end_tag"
        case snippetThreshold = "snippet_threshold"
        case dropTokensThreshold = "drop_tokens_threshold"
        case typoTokensThreshold = "typo_tokens_threshold"
        case pinnedHits = "pinned_hits"
        case hiddenHits = "hidden_hits"
        case highlightFields = "highlight_fields"
        case preSegmentedQuery = "pre_segmented_query"
        case enableOverrides = "enable_overrides"
        case prioritizeExactMatch = "prioritize_exact_match"
        case exhaustiveSearch = "exhaustive_search"
        case searchCutoffMs = "search_cutoff_ms"
        case useCache = "use_cache"
        case cacheTtl = "cache_ttl"
        case minLen1typo = "min_len_1typo"
        case minLen2typo = "min_len_2typo"
    }

}
