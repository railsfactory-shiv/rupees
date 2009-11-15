module NumberToRupees
  WORDS = {0=>"zero", 1=>"One", 2=>"Two", 3=>"Three", 4=>"Four", 5=>"Five", 6=>"six", 7=>"seven", 8=>"Eight", 9=>"Nine",10=>"Ten",11=>"Eleven",12=>"Twelve",13=>"Thirteen",14=>"Fourteen",15=>"Fifteen",16=>"Sixteen",17=>"Seventeen",18=>"Eighteen",19=>"Nineteen",20=>"Twenty",30=>"Thirty",40=>"Fourty",50=>"Fifty",60=>"Sixty",70=>"Seventy",80=>"Eighty",90=>"Ninty"}
  SUFIXES = {0=>"hundred & ", 1=>" Crore, ", 2=>" Lakh, ", 3=>" Thousand, ", 4=>" Hundred, "} # 5=>''
  module Fixnum
    def self.included(recipient)
      recipient.extend(ClassMethods)
      recipient.class_eval do
        include InstanceMethods
      end
    end
 
    module ClassMethods
    end
 
    module InstanceMethods
    def rupees
     result = self >= 0 ? "" : "(-) "
	  num = self.abs
     
     # I would prefer One Rupee, insead of One Rupees
     return "One Rupee." if num==1
	  
     if num > 99
      num.to_s.rjust(11,'0').insert(-4,'0').scan(/../).each_with_index{|x,i| result += self.def_calc(x,i) }
 	  else	 
       result = spell_two_digits(num)
     end
	  result.sub(/,\s$/,'')+ " Rupees."
    end

    protected
    def def_calc(x,i)
     str=self.proc_unit(x)
	  return '' if str.length==0
     return "#{str}#{SUFIXES[i]}"
    end

    def proc_unit(x)
     return "" unless x.to_i > 0
     return spell_two_digits(x.to_i)
    end
	 
	 def spell_two_digits(x)
     return WORDS[x] if WORDS[x]
     r,f = x.divmod(10)
     return "#{WORDS[r*10]}#{WORDS[f]}"
	 end
   end
 end 
end 
Fixnum.send :include, NumberToRupees::Fixnum
