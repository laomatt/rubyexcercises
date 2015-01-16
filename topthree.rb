def top_3_words(str)

end

###SPEC TESTS###
describe 'top_3_words for string: ' do
it ' a long paragraph ' do
expect(top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")).to eq(["a", "of", "on"])
end

it ' words that don\'t nessesarily make any sense' do
expect(top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")).to eq(["e", "ddd", "aa"])
end

it ' filters out special characters ' do
expect(top_3_words("  //wont won't won't wont")).to eq(["won't", "wont"])
end
it 'if unique words total less than 3' do
expect(top_3_words(" ass wont wont")).to eq(["wont"])
end

end