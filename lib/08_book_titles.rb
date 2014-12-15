class Book
def title=(str)
  @st=str
end

def title
  output=""
  output1 = @st.capitalize
  sen=output1.split

  notouchwords=["the","is","a","in", "and", "of", "an"]
  for g in sen
    if !notouchwords.include?(g)
      output<<g.capitalize+" "

    else
      output<<g+" "
    end
  end
  output.strip
end



end
