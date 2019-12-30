class ContactList
  # This Class hold an array of Contact.
  # As well as a counter to track the occupied space.
  def initialize
    @contactList = []
    @counter = 0
  end

  def replace(inContactList)
    @contactList = inContactList.contactList
    @counter = inContactList.counter
  end

  def add(inContact)
    @contactList += [inContact]
    @counter += 1 # counter position +1 when object added
  end

  def remove(inContact)
    @contactList.delete(inContact)
    @counter -= 1 # counter position -1 when object removed
  end

  def counter=(inCounter)
    @counter = inCounter
  end

  def contactListWhole=(inContactList)
    @contactList = inContactList
  end

  def contactListWhole
    @contactList
  end

  def contactList(index)
    @contactList[index]
  end
  def counter
    @counter
  end
 
end #END class
