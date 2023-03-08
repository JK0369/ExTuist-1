import ProjectDescription

// command line 입력 --name 파라미터에 들어가는 값
// ex) tuist scaffold jake --name1 hihi
let nameAttribute: Template.Attribute = .required("name1")

let template = Template(
    description: "Custom template",
    attributes: [
        nameAttribute
    ],
    items: [
//        .string(
//            path: "README.md",
//            contents: "# \(nameAttribute)"
//        ),
        .file(
            path: "README.md",
            templatePath: "README.stencil"
        )
    ]
)
