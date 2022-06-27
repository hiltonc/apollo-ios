// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI
@_exported import enum ApolloAPI.GraphQLEnum
@_exported import enum ApolloAPI.GraphQLNullable

public class ReviewAddedSubscription: GraphQLSubscription {
  public static let operationName: String = "ReviewAdded"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      subscription ReviewAdded($episode: Episode) {
        reviewAdded(episode: $episode) {
          __typename
          episode
          stars
          commentary
        }
      }
      """
    ))

  public var episode: GraphQLNullable<GraphQLEnum<Episode>>

  public init(episode: GraphQLNullable<GraphQLEnum<Episode>>) {
    self.episode = episode
  }

  public var variables: Variables? {
    ["episode": episode]
  }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { .Object(StarWarsAPI.Subscription.self) }
    public static var selections: [Selection] { [
      .field("reviewAdded", ReviewAdded?.self, arguments: ["episode": .variable("episode")]),
    ] }

    public var reviewAdded: ReviewAdded? { __data["reviewAdded"] }

    /// ReviewAdded
    public struct ReviewAdded: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { .Object(StarWarsAPI.Review.self) }
      public static var selections: [Selection] { [
        .field("episode", GraphQLEnum<Episode>?.self),
        .field("stars", Int.self),
        .field("commentary", String?.self),
      ] }

      public var episode: GraphQLEnum<Episode>? { __data["episode"] }
      public var stars: Int { __data["stars"] }
      public var commentary: String? { __data["commentary"] }
    }
  }
}