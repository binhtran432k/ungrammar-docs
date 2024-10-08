#let m = yaml("../metadata.yml")
#let advisor = if m.supervisors.len() > 1 [advisors] else [advisor]
#let advisorArticle = if m.supervisors.len() > 1 [their] else [his]
#let advisorArticleFirst = if m.supervisors.len() > 1 [Their] else [His]

= Acknowledgments

We would like to express our sincere gratitude to our #advisor, #m.supervisors.join([, ], last: [ and ]), for #advisorArticle invaluable guidance and support throughout this project.
#advisorArticleFirst expertise, provided resources, and ongoing encouragement were instrumental in our success.

We are also deeply grateful to the faculty of the #m.department at #m.university for their dedication to our education.
Their knowledge and support have been invaluable in our academic journey.

Finally, we would like to thank our families, friends, and loved ones for their unwavering support and encouragement.
Their belief in us has motivated us to persevere and achieve our goals.

#align(right)[The student group that implements the #m.doc_type]
