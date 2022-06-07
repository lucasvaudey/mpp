module.exports = {
  projects: {
    app: {
      schema: ["lib/graphql/schema.graphql"],
      documents: [
        "lib/graphql/**/*.graphql",
        "lib/graphql/fragment/**/*.graphql",
      ],
      extensions: {
        endpoints: {
          default: {
            url: "http://localhost:5000/graphql",
          },
        },
      },
    },
  },
};
