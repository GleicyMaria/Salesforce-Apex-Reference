public class PaginatedIterable implements Iterable<SObject> {
    private List<SObject> records;
    private Integer pageSize;

    public PaginatedIterable(List<SObject> records, Integer pageSize) {
        this.records = records;
        this.pageSize = pageSize;
    }

    public Iterator<SObject> iterator() {
        List<SObject> page = records.size() > pageSize ? records.subList(0, pageSize) : records;
        return page.iterator();
    }
}