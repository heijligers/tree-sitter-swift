(class_declaration
  name: (type_identifier) @name.definition.class) @definition.class

(protocol_declaration
  name: (type_identifier) @name.definition.interface) @definition.interface

(class_declaration
    (class_body
        [
            (function_declaration
                name: (simple_identifier) @name.definition.class
            )
            (subscript_declaration
                (parameter (simple_identifier) @name.definition.class)
            )
            (function_declaration "init" @name.definition.class)
            (deinit_declaration "deinit" @name.definition.class)
        ]
    )
) @definition.method

(protocol_declaration
    (protocol_body
        [
            (protocol_function_declaration
                name: (simple_identifier) @name.definition.protocol
            )
            (subscript_declaration
                (parameter (simple_identifier) @name.definition.protocol)
            )
            (protocol_function_declaration "init" @name.definition.protocol)
        ]
    )
) @definition.method

(class_declaration
    (class_body
        [
            (property_declaration
                (pattern (simple_identifier) @name.definition.class)
            )
        ]
    )
) @definition.property

(property_declaration
    (pattern (simple_identifier) @name.definition.property)
) @definition.property

(function_declaration
    name: (simple_identifier) @name.definition.function) @definition.function
