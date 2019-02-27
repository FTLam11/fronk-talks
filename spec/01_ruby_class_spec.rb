class RubyClass end;

describe RubyClass do
  it 'keeps a reference to self' do
    block = lambda {
      # add code to RubyClass here
    }

    expect { block.call }.to output('RubyClass').to_stdout
  end

  it 'returns the value of the last statement' do
    result = class RubyClass
               # write code here
             end
    expect(result).to be RubyClass
  end
end

describe 'Current Class' do
  it 'has a class at the top level' do
    this = nil
    # change the assignment of this
    expect(this.class).to be Object
  end

  it 'has a class inside a method' do
    class RubyClass
      def a_method
        def b_method
          # write code here
        end

        b_method
      end
    end

    expect(RubyClass.new.a_method).to be RubyClass
  end
end

describe Module do
  describe '#class_eval' do
    it 'evaluates a block in the context of an existing class' do
      # use class_eval here
      # use class_eval or module_eval here
      expect({key: 'value'}.hello_world).to eq 'Hello World'
      expect('Earth'.hello_world).to eq 'Hello World'
      expect(1.hello_world).to eq 'Hello World'
      expect((1..10).hello_world).to eq 'Hello World'
    end
  end
end
