# Keymail

[github.com/alcesleo/keymail](https://github.com/alcesleo/keymail/)

Note:
- _Don't forget to load up example video_
- Autentisieringssystem via email
- Det går till så att man skriver in sin email adress, får ett email, klickar på en länk i det mailer, och sen så är man inloggad - inga lösenord behövs

=====

## Where it started

[notes.xoxco.com/post/27999787765/is-it-time-for-password-less-login](http://notes.xoxco.com/post/27999787765/is-it-time-for-password-less-login)

![](resources/blogpost.png)

Note:
- Blogpost för ganska länge sen
- Inte hänt mycket sen dess
- Bra lösning som jag ville se användas


=====

# Rails

<!-- .slide: data-background="#981a21" -->

Note:
- Plugin, gem, engine
- enkelt att använda email istället för lösenord i en rails app

=====

## Sample code

<!-- .slide: data-background="indigo" -->

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

Note:
Explain step by step
- request comes in, and sends an email, params comes from the form
- triggered when

=====

### Quick demo

Note:
Switch to fullscreen movie

=====

### Application

[keymail-example.herokuapp.com](http://keymail-example.herokuapp.com/)

### Source

[github.com/alcesleo/keymail-example](https://github.com/alcesleo/keymail-example/)

=====

## Docs

[alcesleo.github.io/keymail](http://alcesleo.github.io/keymail/)

![](resources/docs.png)

=====

# TDD

<!-- .slide: data-background="slateblue" -->

<strong style="color: red;">red</strong> &#8594; <strong style="color: springgreen;">green</strong> &#8594; <strong style="color: yellow;">refactor</strong>

Note:
- Test Driven Development
- Först skriver ett misslyckande test
- Sedan skriver man kod för att få det att lyckas

-----

<!-- .slide: data-background="indigo" -->

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

Note:
- Såhär ser det ut när jag kör alla test i projektet
- Vill ni se mer realistiska exempel kan ni titta på de riktiga testerna på github

-----

### Good

<!-- .slide: data-background="green" -->

- confidence <!-- .element: class="fragment" -->
- fewer bugs <!-- .element: class="fragment" -->
- design feedback <!-- .element: class="fragment" -->
- good code &#8776; easily testable code <!-- .element: class="fragment" -->

Note:
- Körbara bevis på att koden fungerar

-----

### Bad

<!-- .slide: data-background="red" -->

- time consuming? <!-- .element: class="fragment" -->
- difficult <!-- .element: class="fragment" -->
- bad tests <!-- .element: class="fragment" -->

-----

### Conclusion

<!-- .slide: data-background="skyblue" -->

- the code is much better <!-- .element: class="fragment" -->
- time to write test < time to fix bugs <!-- .element: class="fragment" -->
- do it, seriously <!-- .element: class="fragment" -->

Note:
mycket snack om hur, vilka, och hur många tester man ska skriva, något alla verkar vara överens om är att man bör göra det.

-----

<!-- .slide: data-background="resources/github.png" -->

Note:
Continuous Integration, coverage statistics

=====

### Help me

<!-- .slide: data-background="dodgerblue" -->

- use it
- spread the word
- contribute

=====

### Many thanks!

<!-- .slide: data-background="blueviolet" -->

[github.com/alcesleo/keymail](http://github.com/alcesleo/keymail/)

[keymail-example.herokuapp.com](http://keymail-example.herokuapp.com/)

@alcesleo

Note:
- Här är länkarna till projektet och exempelapplikationen, alla andra länkar finns i projektets readme
- Jag är @alcesleo på twitter och github om ni vill kontakta mig
- Då får jag tacka för mig
