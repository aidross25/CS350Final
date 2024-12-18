//fn function_name(arg_name: &pointerType) -> returnType
fn lowercase_text(text: &str) -> String {
    text.to_lowercase()
}

fn capitalize_text(text: &str) -> String {
    text.to_uppercase()
}

fn reverse_text(text: &str) -> String {
    text.chars().rev().collect()
}

fn remove_spaces(text: &str) -> String {
    text.replace(" ", "")
}

fn perform_operation(func: fn(&str) -> String, text: &str) -> String {
    func(text)
}

fn is_palindrome(){
  //TODO
}

fn main() {
    // Perform various operations
    println!("{}", perform_operation(capitalize_text, "hello world"));
    println!("{}", perform_operation(reverse_text, "1234"));
    println!("{}", perform_operation(capitalize_text, "ruby and rust"));
    println!("{}", perform_operation(remove_spaces, "ruby and rust"));
    println!("{}", perform_operation(capitalize_text, "something"));
    println!("{}", perform_operation(reverse_text, "something"));
}
