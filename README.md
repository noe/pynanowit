# pynanowit
A Python, Flask, and SQLite nano twitter clone

    because writing todo lists is not fun


    ~ What is PyNanoWit?

      A SQLite and Flask nano twitter clone

    ~ How do I use it?

      1. edit the configuration in the pynanowit.py file or
         export an PYNANOWIT_SETTINGS environment variable
         pointing to a configuration file.

      2. tell flask about the right application:

         export PYTHONPATH=${PYTHONPATH}:`pwd`
         export FLASK_APP=pynanowit

      2. fire up a shell and run this:

         flask initdb

      3. now you can run pynanowit:

         flask run

         the application will greet you on
         http://localhost:5000/

    ~ Is it tested?

      You betcha. Run the `python setup.py test` file to
      see the tests pass.
