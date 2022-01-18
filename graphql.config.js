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
            headers: {
              Authorization: `Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY0MjUxNjE2MywiZXhwIjoxNjQyNTQ0OTYzfQ.cz1876ePPb-iFRVC6USAu5jYErgvb0g9avQcROAy_to`,
            },
          },
        },
      },
    },
  },
};
