# Keymail

<https://github.com/alcesleo/keymail/>

=====

## Where it started

<http://notes.xoxco.com/post/27999787765/is-it-time-for-password-less-login>

![](resources/blogpost.png)

=====

## Rails

- A plugin that makes it easy

=====

## Sample code

```ruby
class SessionsController < ApplicationController

  def request_authentication_email
    Keymail::Authentication.request(params[:email])
  end

  def validate_authentication_link
    result = Keymail::Authentication.verify_url_key(params[:url_key])

    if result.authenticated?
      redirect_to :success
    else
      redirect_to :fail
    end
  end

end
```

=====

## Docs

<http://alcesleo.github.io/keymail/>

![](resources/docs.png)

=====

<video data-autoplay src="resources/demo.mov"></video>

=====

### Application

<http://keymail-example.herokuapp.com/>

### Source

<https://github.com/alcesleo/keymail-example>

=====

### TDD

<span style="color: red;">red</span> - <span style="color: green;">green</span> - <span style="color: yellow;">refactor</span>

-----

```ruby
## Test ##
describe Plusser do
  it 'adds numbers together' do
    Plusser.add(5, 4).must_equal 9
  end
end
```
<!-- .element class="fragment"  -->

```ruby
## Implementation ##
class Plusser
  def self.add(first, second)
    first + second
  end
end
```
<!-- .element class="fragment"  -->

-----

### Running tests

<video data-autoplay src="resources/tests.mov"></video>

-----

### Good (TDD)

- confidence <!-- .element: class="fragment" -->
- fewer bugs <!-- .element: class="fragment" -->
- design feedback <!-- .element: class="fragment" -->
- good code &#8776; easily testable code <!-- .element: class="fragment" -->

-----

### Bad (TDD)

- time consuming?
- difficult
- bad tests

-----

### Conclusion (TDD)

- the code is much better
- time to write test < time to fix bugs
- do it, seriously

---

<!-- .slide: data-background="resources/github.png" -->

