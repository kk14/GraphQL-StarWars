// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllFilmsQuery: GraphQLQuery {
  public static let operationName: String = "AllFilms"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      """
      query AllFilms {
        allFilms {
          __typename
          films {
            __typename
            title
            director
            releaseDate
          }
        }
      }
      """
    ))

  public init() {}

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { StarWarsAPI.Objects.Root }
    public static var __selections: [Selection] { [
      .field("allFilms", AllFilms?.self),
    ] }

    public var allFilms: AllFilms? { __data["allFilms"] }

    /// AllFilms
    ///
    /// Parent Type: `FilmsConnection`
    public struct AllFilms: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { StarWarsAPI.Objects.FilmsConnection }
      public static var __selections: [Selection] { [
        .field("films", [Film?]?.self),
      ] }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var films: [Film?]? { __data["films"] }

      /// AllFilms.Film
      ///
      /// Parent Type: `Film`
      public struct Film: StarWarsAPI.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ParentType { StarWarsAPI.Objects.Film }
        public static var __selections: [Selection] { [
          .field("title", String?.self),
          .field("director", String?.self),
          .field("releaseDate", String?.self),
        ] }

        /// The title of this film.
        public var title: String? { __data["title"] }
        /// The name of the director of this film.
        public var director: String? { __data["director"] }
        /// The ISO 8601 date format of film release at original creator country.
        public var releaseDate: String? { __data["releaseDate"] }
      }
    }
  }
}
